use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'      => 'Sledge::Pages::Apache::I18N',
    'VERSION_FROM' => 'lib/Sledge/Pages/Apache/I18N.pm', # finds $VERSION
    'PREREQ_PM' => {
	Test::More => 0.32,
    Apache::Request::I18N => 0,
    },
);
