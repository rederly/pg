#########################################################################
#
#  Implement the list of Parser::Context::Reduction type
#
package Parser::Context::Reduction;
use strict;
use vars qw (@ISA);
@ISA = qw(Value::Context::Data);

sub init {
  my $self = shift;
  $self->{dataName} = 'reduction';
  $self->{name} = 'reduction';
  $self->{Name} = 'Reduction';
  $self->{namePattern} = '[^ ]+';
}

sub update {} # no pattern needed

sub reduce {
  my $self = shift;
  my %flags;
  foreach my $id (@_) {$flags{$id} = 1}
  $self->set(%flags);
}

sub noreduce {
  my $self = shift;
  my %flags;
  foreach my $id (@_) {$flags{$id} = 0}
  $self->set(%flags);
}

#########################################################################

1;