use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Date::Easter',
    'VERSION_FROM' => 'Easter.pm', # finds $VERSION
    'PREREQ_PM' => {
        Test::More => 0,
    },
);
