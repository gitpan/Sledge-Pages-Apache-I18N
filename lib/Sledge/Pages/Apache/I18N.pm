package Sledge::Pages::Apache::I18N;
use strict;
use base qw(Sledge::Pages::Base);

use vars qw($VERSION);
$VERSION = '0.01';

use Apache;
use Apache::Request::I18N;

sub create_request {
    my ($self, $r) = @_;
    my $req = Apache::Request::I18N->new(
        $r || Apache->request,
        DECODE_PARMS => 'utf-8',
    );
    #    $req->param; do parse here
    return $req;
}

1;

__END__

=head1 NAME

Sledge::Pages::Apache::I18N - Internationalization extension to Sledge::Pages::Apache

=head1 SYNOPSIS

  package YourProj::Pages;
  use strict;
  use base qw(Sledge::Pages::Apache::I18N);
  use Sledge::Template::TT::I18N;
  use Sledge::Charset::UTF8::I18N;

  ....

  sub create_charset {
      my $self = shift;
      Sledge::Charset::UTF8::I18N->new($self);
  }

=head1 DESCRIPTION

Sledge::Pages::Apache::I18N is Internationalization extension to Sledge::Pages::Apache.

=head1 AUTHOR

Yasuhiro Horiuchi E<lt>yasuhiro@hori-uchi.comE<gt>

=head1 SEE ALSO

L<Sledge::Pages::Apache>, L<Apache::Request::I18N>

=cut
