say +words.grep: { $_ ne .flip && .comb.Bag.values.grep(* % 2) < 2 }
