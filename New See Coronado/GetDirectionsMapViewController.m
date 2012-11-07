//
//  GetDirectionsMapViewController.m
//  See Coronado
//
//  Created by Robert Koczon on 11/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GetDirectionsMapViewController.h"
#import "DetailViewController.h"

@interface GetDirectionsMapViewController ()

@end

@implementation GetDirectionsMapViewController

@synthesize getDirectionsMapView = _getDirectionsMapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.getDirectionsMapView.delegate self];
    [self.getDirectionsMapView setShowsUserLocation:YES];
    
	// Do any additional setup after loading the view.
}

- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 500, 500);
    [self.getDirectionsMapView setRegion:region animated:YES];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
