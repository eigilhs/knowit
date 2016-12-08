my %ladders = (3, 17, 8, 10, 15, 44, 22, 5, 39, 56, 49, 75,
               62, 45, 64, 19, 65, 73, 80, 12, 87, 79);
my @locs is default(1);
my $l = 0;

for slurp.comb(/\d/) {
    my $player = $++ % 1337;
    @locs[$player] += $_ if @locs[$player] + $_ < 91;
    @locs[$player] = $_ and ++$l with %ladders{@locs[$player]};
    say ($player + 1) * $l and last if @locs[$player] == 90
}
