use Test::More qw(no_plan);

BEGIN { use_ok( 'Date::Easter' ); }

my ($month, $day);

($month, $day) = gregorian_easter( 1990 );
ok( $month == 4, "1990 - April (Got $month)");
ok ($day == 15, "1990 - April 15 (Got $day)");

($month, $day) = gregorian_easter( 1991 );
ok( $month == 3, "1991 - March (Got $month)");
ok ($day == 31, "1991 - March 31 (Got $day)");

($month, $day) = gregorian_easter( 1992 );
ok( $month == 4, "1992 - April (Got $month)");
ok ($day == 19, "1992 - April 19 (Got $day)");

($month, $day) = gregorian_easter( 2000 );
ok( $month == 4, "2000 - April (Got $month)");
ok ($day == 23, "2000 - April 23 (Got $day)");

($month, $day) = gregorian_easter( 2001 );
ok( $month == 4, "2001 - April (Got $month)");
ok ($day == 15, "2001 - April 15 (Got $day)");

($month, $day) = gregorian_easter( 2002 );
ok( $month == 3, "2002 - March (Got $month)");
ok ($day == 31, "2002 - March 31 (Got $day)");

