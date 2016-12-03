my %p;

for (lines) {
    when /friends \h+ (\w+) \h+ (\w+)/ {
        %p{$0}{$1} +|= 1;
        %p{$1}{$0} +|= 1;
    }
    when /(\w+) \h+ hates \h+ (\w+)/ {
        %p{$0}{$1} +|= 2;
        %p{$1}{$0} +|= 4;
    }
}

say %p.keys.sort({%p{$_}.values.comb(/3/)}).tail
