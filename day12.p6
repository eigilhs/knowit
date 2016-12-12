my @msg;

for slurp.comb(/\w/).map(*.lc.ord / 2 - 48) {
    @msg.splice(+@msg div 2, 0, ($_.round, $_.Int))
}

say @msg.join(',').trans(1..13 => <I II III IV V VI VII VIII IX X XI XII XIII>)
