my @adventurers = <priest wizard warrior>;
my @dead;
my $survivors = 0;

for 1 .. 100 <-> $goblins is rw {
    my $may_resurrect = True;
    while $goblins {
        $goblins--;
        $goblins -= 10 if @adventurers ~~ /wizard/;
        $goblins-- if @adventurers ~~ /warrior/;
        $goblins max= 0;
        if $may_resurrect and @adventurers ~~ /priest/ and @dead {
            @adventurers.push(@dead.shift);
            $may_resurrect = False
        }
        last unless @adventurers;
        if @adventurers and $goblins and 10 * (@adventurers + 1) <= $goblins {
            @dead.push(@adventurers.pop);
        }
    }
    @dead = [];
    $survivors += $goblins;
}

say 18 + $survivors + @adventurers
