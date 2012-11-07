//
//  GetDirectionsMapViewController.h
//  See Coronado
//
//  Created by Robert Koczon on 11/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GetDirectionsMapViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic, weak) IBOutlet MKMapView * getDirectionsMapView;

@end
