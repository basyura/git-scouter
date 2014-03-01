# GitScouter

scouter for git

## Installation

    $ gem install git-scouter

## Usage

analyze all commit

    $ git-scouter

analyze user's all commit

    $ git-scouter -u user

analyze target one day's commit

    $ git-scouter -d 20140301

    $ git-scouter -d 0301

    $ git-scouter -d today

    $ git-scouter -d 0

    $ git-scouter -d -1

analyze commit

    $ git-scouter -c HEAD

    $ git-scouter -c HEAD~

    $ git-scouter -c c1b543b46ddfc87a2ab1f5088a33ff3634be94a6

output

      0 : 6bcf7d95c0289289794499b0959e20bfb91b750d - basyura  Sat Feb 15 22:26:08 2014 +0900
          Merge: 9478169 1f017a3
              Merge pull request #36 from ompugao/ignore_withheld_content
              ignore withheld content
     71 : 1f017a3d2ad61dd70f1265b50c4f4d3d8ba2b704 - Shohei Fujii  Sat Feb 15 16:12:26 2014 +0900
              ignore withheld content
     43 : 9478169f4213b9e59b37e416a925a783c36a6db5 - basyura  Sat Dec 7 17:17:02 2013 +0900
              echomsg if tweetvim filetype
    930 : a5c80c116c2b660d81af75872c12b6313f48e903 - basyura  Sun Nov 17 22:28:48 2013 +0900
              added bang option to exract by track words
     86 : d33d0ff7c8fb64cfe63b526cdf030521dfe6fcda - basyura  Sun Nov 17 10:49:03 2013 +0900
              fixed reload userstream behavior with track
    305 : 51acfa535fbb984889d0369cb476e3110db94846 - basyura  Mon Nov 4 17:26:37 2013 +0900
              defined <Plug>
      1 : 9bc7fef07a2741862f2080746d9a348210afdc0a - basyura  Mon Nov 4 09:49:27 2013 +0900

## License

Released under the MIT License.  See the [LICENSE][] file for further details.

[license]: LICENSE.txt
