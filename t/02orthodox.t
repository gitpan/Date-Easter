use Test::More qw(no_plan);

BEGIN { use_ok( 'Date::Easter' ); }

my ($month, $day);

($month, $day) = orthodox_easter( 1990 );
ok( $month == 4, "1990 - April (Got $month)");
ok ($day == 15, "1990 - April 15 (Got $day)");

($month, $day) = orthodox_easter( 1991 );
ok( $month == 4, "1991 - April (Got $month)");
ok ($day == 7, "1991 - April 7 (Got $day)");

($month, $day) = orthodox_easter( 1992 );
ok( $month == 4, "1992 - April (Got $month)");
ok ($day == 26, "1992 - April 26 (Got $day)");

($month, $day) = orthodox_easter( 2000 );
ok( $month == 4, "2000 - April (Got $month)");
ok ($day == 30, "2000 - April 30 (Got $day)");

($month, $day) = orthodox_easter( 2001 );
ok( $month == 4, "2001 - April (Got $month)");
ok ($day == 15, "2001 - April 15 (Got $day)");

($month, $day) = orthodox_easter( 2002 );
ok( $month == 5, "2002 - May (Got $month)");
ok ($day == 5, "2002 - May 5 (Got $day)");

