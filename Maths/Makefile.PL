use lib '.';
use inc::Module::Install;

name     'Maths';
all_from 'lib/Maths.pm';
author   q{Jacinta Richardson <contact@perltraining.com.au>};
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

