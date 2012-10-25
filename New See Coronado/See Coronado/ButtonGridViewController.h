//
//  ButtonGridViewController.h
//  See Coronado
//
//  Created by Frank Battaglia on 9/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TaggedButton.h"

@interface ButtonGridViewController : UIViewController

@property (atomic, weak) IBOutlet TaggedButton * doButton;
@property (atomic, weak) IBOutlet TaggedButton * eatButton;
@property (atomic, weak) IBOutlet TaggedButton * seeButton;
@property (atomic, weak) IBOutlet TaggedButton * shopButton;
@property (atomic, weak) IBOutlet TaggedButton * stayButton;
@property (atomic, weak) IBOutlet TaggedButton * travelButton;

@end
