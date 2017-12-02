(my %h){.[0, 1]} »+=« (-.[2], .[2]) for lines».split(',');
say +%h.grep(*.value > 10)
