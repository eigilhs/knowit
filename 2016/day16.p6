sub f($_, &j) { .grep(*.comb.sum == 43).first(* ** j(2, 3)⁻¹ % 1) }
say f((1E5 ..^ 5E5), &one) || f((5E5 ..^ 1E6), &all)
