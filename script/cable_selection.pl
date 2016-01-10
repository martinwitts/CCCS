#!/usr/bin/perl

use strict;
use warnings;
use feature qw(say);
use Switch;
use CCCS::Flat;

CHOICE:
say "What is the Cable type? (1 = flat sheathed thermoplastic 70degrees)";

my $ct =<STDIN>;
chomp $ct;
            #switch
            switch ($ct) {
    		case "1" {
    			my ($rzs, $rmm, $rmethod, $rdrop, $rperc, $rmaxzs, $rIb, $rze, $rlength, $rpscc, $rIn, $rUse, $rRing) = init();
    			say "------------------------------------------------------------";
    			say "Finished Cable size = ".$rmm." mm";
    			say "Zs = ".$rzs."ohms (max for device = ".$rmaxzs.")";
    			say "Reference method = ".$rmethod."#";
    			say "Voltage Drop = ".$rdrop."v at ".$rperc." %";
    			say "Design current Ib = ".$rIb." amps";
      			say "Ze = ".$rze." ohms";  	
      			say "Length = ".$rlength." metres";
      			say "PSCC = ".$rpscc." KA";
      			say "In = ".$rIn." A";
      			say "Use :(Lighting 1, Other 2) = ".$rUse;
      			say "(Radial 1, Ring 2) = ".$rRing;		
    			 }
			case "2" {say "other"}
    		else     {say "select again";
    			goto CHOICE;
    		}
}
			#switch
			