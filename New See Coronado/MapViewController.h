//
//  MapViewController.h
//  See Coronado
//
//  Created by Robert Koczon on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface MapViewController : UIViewController <MKMapViewDelegate> 

@property (nonatomic, weak) IBOutlet MKMapView * mapView;


@end
