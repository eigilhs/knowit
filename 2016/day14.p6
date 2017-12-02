say |(1..16).combinations.grep({$_ %% 2 && 2.25E32 < [*] $_ »**« $_}).min(*.tail)
