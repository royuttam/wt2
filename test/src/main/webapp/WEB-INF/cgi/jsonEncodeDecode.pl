#!D:/Perl64/bin/perl.exe
print "Content-type: text/html\n\n";

=pod
use JSON; 
my $text = '{"name":"John","age":38,"married":true}';
my $obj = decode_json ($text);
#my $obj = JSON->new->utf8->decode($text);
print "name = " . $obj->{"name"};
print ", age = " . $obj->{"age"};
print ", married = " . $obj->{"married"};


use JSON; 
my $text = '["John",38,true]';
my @arr = @{decode_json ($text)};
print "name = " . @arr[0] . ", age = " . @arr[1] . ", married = " . @arr[2];
=cut

=pod
package Person;
sub new {
   my $class = shift;	
   my $self = {
      name => shift,
      designation  => shift,
      contact  => shift,
   };	
   return $self;
}
use JSON; 
my $obj = new Person( "John", 38, true);
#my $text = JSON->new->utf8->encode($obj);
my $text = encode_json $obj;
print $text;
=cut

use JSON; 
my @arr = ( "John", 38, true);
#my $text = JSON->new->utf8->encode(\@arr);
my $text = encode_json (\@arr);
print $text;




=pod
use JSON;
my %rec_hash = ('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5);
my $json = encode_json \%rec_hash;
print "$json\n";
=cut