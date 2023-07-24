#!/usr/bin/perl

while(<>) {
  if (/img width=\"480px\" src=\"([^\"]*)/) {
     # print "$1\n";
     `/usr/bin/wget -m -w 3 --random-wait $1`;
  }
}
