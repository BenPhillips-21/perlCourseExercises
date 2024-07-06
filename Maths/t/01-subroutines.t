use strict;
use warnings;
use Maths qw(sum product mode mean median);
use Test::More;
use List::Util qw(shuffle);

is( sum(1..10), 55, "sum() works properly");
is( product(1..10), 3_628_800, "product() works properly");

is ( sum(-0), 0, "sum() working properly");
is ( sum(5), 5, "sum() working");
is ( mean(5, 7), 6, "mean() working");
is ( mean(9), 9, "mean() working");
is ( product(0, 22, 42342, 333, 321312, 0), 0, "product() working");
is ( product(-0, -0, -0), 0, "product() working!!");
is (mean(1..9), 5, "mean() is working :)))");
is (median(1..9), 5, "median() is working :D");
is (median(1..10), 5.5, "median() is working still :DD");
is (mode(1, 1, 1, 2, 3, 4), 1, "mode() working as expected, carry on");
is (mode(1, 2, 3, 4, 3, 3, 3, 3), 3, "mode() working as expected, carry on");
is (sum( shuffle(1..10)), 55, "Shuffled sum works :D");


done_testing();