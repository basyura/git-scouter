

module GitScouter
  class Status
    def initialize
      @statuses = {}
      @files    = []
      @comments = []
    end
    def [](key)
      @statuses[key]
    end
    def files
      @files
    end
    def comment
      @comments.join("\n")
    end
    def add(line)
      line.chomp!
      if line =~ /^commit/
        @statuses[:commit] = line.split(' ')[1]
      elsif line =~ /^Author/
        @statuses[:author] = line.split(': ')[1]
      elsif line =~ /^Date/
        @statuses[:date] = line.split(':   ')[1]
      elsif line =~ /^[MAD]\t/
        @files << line.split("\t")[1]
      else
        @comments << "           " + line unless line.strip == ''
      end
    end
  end
end
