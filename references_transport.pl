#!/usr/bin/perl
use strict;
use warnings;
use autodie;
use v5.24.0;

my %transport = (
        cars          =>   [qw(toyota ford holden porsche)],
        planes        =>   [qw(boeing harrier)],
        boats         =>   [qw(clipper skiff dinghy)],
);


my %models = (
        cars          =>   {
		toyota  => [ qw(Corolla Century Camry Prius) ],
		ford    => [ qw(Focus Taurus Ranger Explorer Escape) ] ,
		holden  => [ qw(Monaro Torana Commodore Camira Astra) ], 
		porsche => [ qw(Boxster Cayman Cayenne) ],
	},
        planes        =>   {
		boeing  =>  [ qw(Clipper Stratocruiser 707 757 787) ],
		sikorsky => [ qw(S-20 S-30 S-43 VS-44) ],
	},
        boats         =>   {
		bayliner     => [ qw(Maxum SeaRay Baja Capri) ],
		mastercraft  => [ qw(Prostar MariStar CSX) ],
		sunseeker    => [ qw(Sportsfisher Portofino Predator) ],
	},
);

use Data::Dumper;
say Dumper \%transport;
say Dumper \%models;

print "The second plane is: $transport{planes}[1] \n";

print "All the planes are $transport{planes}->@*\n";

print "The third boeing model is: $models{planes}{boeing}[2]\n";

print "All the types of holden car models are $models{cars}{holden}->@*\n";


my @transport = keys %models;
print "All the forms of transport are @transport\n";

my @boatmakers = keys $models{boats}->%*;
print "All the manufacturers of boats are @boatmakers\n";
