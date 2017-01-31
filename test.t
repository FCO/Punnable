use Test;
use lib "lib";
use Punnable;
role R {
	method r {...}
}

make-punnable(R);

my $or;
lives-ok {$or = R.new};
does-ok $or, R;
dies-ok {$or.r};
