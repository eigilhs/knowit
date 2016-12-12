(my %h){$_[0, 1]} »+=« (-$_[2], $_[2]) for lines».split(',');
say +%h.grep(*.value > 10)
