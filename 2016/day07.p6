say [+] do for (slurp) ~~ m:g:s/(\-?\d+) \w+ (.)/ {
    %(<n 1 e -1i s -1 w 1i>){.[1]} * .[0]
}
