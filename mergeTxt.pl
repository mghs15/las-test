my @files = glob "txt/*.txt";
open(OFH, "> merge/merge.txt") or die "$!";
my $n = 0;

foreach my $file (@files) {
  open(FH, $file) or die "$!";
  my @lines = <FH>;
  foreach my $d (@lines) {
    my $dd = $n . " " . $d;
    print OFH $dd;
    $n++;
  }
  close(FH);
}
close(OFH);


