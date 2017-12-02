my $s = '1111321112321111';
$s ~~ s:g/(.)$0*/{$/.chars}$0/ for ^50;
say $s.chars
