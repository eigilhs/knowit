my $s = 'aeteesasrsssstaesersrrsse';
my $letters = $s.comb.Set;
my $freqs = $s.comb.Bag;
my @factors = (1..$s.chars).grep($s.chars %% *);

for words.grep(*.comb.Set eq $letters)».comb -> @word {
    for @factors -> $n {
        say "$n-"~@word.join and exit if @word.rotor($n => 1-$n).flat.Bag eq $freqs
    }
}
