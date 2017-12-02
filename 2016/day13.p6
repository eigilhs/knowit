=comment
    This does not work (yet):
    Partially dimensioned views of arrays not yet implemented. Sorry. 
      in block <unit> at day13.p6 line 12

my uint8 @lights[10000; 10000];

for (slurp) ~~ m:g:s/(\w+) (\d+)\,(\d+).+?(\d+)\,(\d+)/ {
    if $_[0] eq 'toggle' {
        @lights[$_[1]..$_[3]; $_[2]..$_[4]] »+^=» 1
    } else {
        @lights[$_[1]..$_[3]; $_[2]..$_[4]] »=» $_[0] eq 'on' ?? 1 !! 0
    }
}

say @lights».sum.sum
