//
//  ButtonGridViewController.m
//  See Coronado
//
//  Created by Frank Battaglia on 9/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ButtonGridViewController.h"
#import "DrillDownTableViewController.h"

@interface ButtonGridViewController ()

@end

@implementation ButtonGridViewController

@synthesize doButton;
@synthesize eatButton;
@synthesize seeButton;
@synthesize shopButton;
@synthesize stayButton;
@synthesize travelButton;


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
    
    
    
    self.doButton.sectionString = @"doButton";
    self.eatButton.sectionString = @"eatButton";
    self.seeButton.sectionString = @"seeButton";
    self.shopButton.sectionString = @"shopButton";
    self.stayButton.sectionString = @"stayButton";
    self.travelButton.sectionString = @"travelButton";
    
	// Do any additional setup after loading the view.
    
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

-(void)prepareForSegue:(UIStoryboardSegue * )segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[DrillDownTableViewController class]] && [sender isKindOfClass:[TaggedButton class]]) { 
        if([sender respondsToSelector:@selector(sectionString)]){
            NSString *attachedString = [sender sectionString];
            DrillDownTableViewController * drillDownTVC = [segue destinationViewController];
            if([attachedString isEqualToString:@"doButton"]){
                drillDownTVC.dataKey = @"ItemList";
            }
            if([attachedString isEqualToString:@"eatButton"]){
                drillDownTVC.dataKey = @"whatToEat";
            }
            if([attachedString isEqualToString:@"seeButton"]){
                drillDownTVC.dataKey = @"whatToSee";
            }
            if([attachedString isEqualToString:@"shopButton"]){
                drillDownTVC.dataKey = @"whereToShop";
            }
            if([attachedString isEqualToString:@"stayButton"]){
                drillDownTVC.dataKey = @"whereToStay";
            }
            if([attachedString isEqualToString:@"travelButton"]){
                drillDownTVC.dataKey = @"howToTravel";
            }
        }
    }
}

@end
