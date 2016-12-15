#!/usr/bin/env bash
#
# Summary: process *.fls file, output *.d file (Makefile format)
#          with  lists of dependencies and derived files.
#          Second optional param is for removing from deps
#
# Usage: fls2d foo.fls [bar.4ht]
#
# 
# 

set -e

awk ' BEGIN    {
                 foo = "tex4ht-cond4ht";
                 foo_a = "^/"
                 htmldir = "./html.dir"
                 print "##\n## Script generated file. Please do not edit\n##"
               }
      END      { print "# derived files list from " foo ".fls." }
      END      { print "define " foo "_derived" }
      END      { for (x in outp) delete inp[x] }
      END      { for (x in outp) print "  "x"\\" }
      END      { print "\nendef" }

      END      { print "# # deps files list from " foo ".fls." }
      END      { print "define " foo "_deps" }
      END      { for (x in inp)  print "  "x"\\"}
      END      { print "\nendef" }
      END      { print "define " foo "_doc" }
      END      { print "  " htmldir "/" foo "/" foo ".html"}
      END      { print "\nendef" }
      $1 == "OUTPUT" && $2 !~ foo && $2 !~ foo_a { outp[$2] = $2 }
      $1 == "INPUT"  &&              $2 !~ foo_a { inp[$2]  = $2 }
    ' tex4ht-cond4ht.fls


#      END      { print "FOOTER 1, NR=", NR }
#      END      { print "FOOTER 2, out =", out  }
#      /PWD/    { print "Working Directory"; print $0 }
