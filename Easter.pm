package Date::Easter;

use strict;
use vars qw($VERSION @ISA @EXPORT);

require Exporter;

@ISA = qw(Exporter AutoLoader);
@EXPORT = qw(
	julian_easter gregorian_easter easter
);
$VERSION = '1.01';

sub julian_easter	{
	my ($year) = @_;
	my ($G, $I, $J, $L,
		$month, $day,
		);
	$G = $year % 19;
	$I = (19 * $G + 15) % 30;
	$J = ($year + int( $year/4 ) + $I) % 7;
	$L = $I - $J;
	$month = 3 + int (($L + 40)/44);
	$day = $L + 28 - ( 31 * (int ($month/4) ) );
	return ($month, $day);
}

sub gregorian_easter	{
	my ($year) = @_;
	my ($G, $C, $H, $I, $J, $L,
		$month, $day,
		);
	$G = $year % 19;
	$C = int($year/100);
	$H = ( $C - int($C/4) - int((8 * $C)/25) + 19*$G + 15) % 30;
	$I = $H - int($H/28) * ( 1 - int($H/28) * int(29/($H+1)) *
														int((21-$G)/11));
	$J = ($year + int($year/4) + $I + 2 - $C + int($C/4)) % 7;
	$L = $I - $J;
	$month = 3 + int(($L+40)/44);
	$day = $L + 28 - (31 * int($month/4));
	return ($month, $day);
}

sub easter	{
	my ($year) = @_;
	my ($month, $day) = gregorian_easter($year);
	return ($month, $day);
}

1;

__END__

=head1 NAME

Date::Easter - Calculates Easter for any given year

=head1 SYNOPSIS

  use Date::Easter;
  ($month, $day) = julian_easter(1752);
  ($month, $day) = easter(1753);
  ($month, $day) = gregorian_easter(1753);

=head1 DESCRIPTION

Calculates Easter for a given year.

easter() is, for the moment, an alias to gregorian_easter(), since
that's what most people use now.

=head1 AUTHOR

Rich Bowen <rbowen@rcbowen.com>

=head1 To Do

I need to put some real tests in test.pl

Since the dates that various countries switched to the Gregorian
calendar vary greatly, it's hard to figure out when to use
which method. Perhaps some sort of locale checking would be
cool?

=head1 Other Comments

Yes, Date::Manip already has code in it to do this. But Date::Manip
is very big, and rather slow. I needed something faster and
smaller, and did not need all that other stuff. And I have a real
interest in date calculations, so I thought this would be fun.
Date::Manip is a very cool module. I use it myself.

See also http://www.pauahtun.org/CalendarFAQ/cal/node3.html
for more details on calculating Easter.

=cut
