module GitScouter

  # ~/.git-scouterrc
  #
  # ignore=.*.md|bin/.*
  #
  class Config
    include Singleton

    def initialize
      @ignore_list = []

      path = File.join(File.expand_path('~'), '.git-scouterrc')
      return unless File.exists?(path)

      open(path, &:read).each_line do |line|
        next if line =~ /^#/
        @ignore_list << $1 if line =~ /^ignore=(.*)$/
      end
    end

    def ignore?(path)
      @ignore_list.any? {|pattern| path =~ /#{pattern}/ }
    end
  end
end
