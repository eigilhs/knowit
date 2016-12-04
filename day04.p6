say do for my @a = 1..1337 <-> $a { $a = @a[$++] if $a %% 7 || $a ~~ /7/ }.tail
