//
//  DetailViewController.m
//  See Coronado
//
//  Created by Robert Koczon on 10/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "DrillDownTableViewController.h"
#import "ButtonGridViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize scroll = _scroll;

@synthesize name = _name;
@synthesize subHeaderText = _subHeaderText;
@synthesize hoursText = _hoursText;
@synthesize phoneNumber = _phoneNumber;
@synthesize descriptionText = _descriptionText;
@synthesize mainImageString = _mainImageString;
@synthesize selectionImageString = _selectionImageString;

@synthesize nameHeader = _nameHeader;
@synthesize subHeader = _subHeader;
@synthesize description = _description;
@synthesize hours = _hours;
@synthesize phone = _phone;

@synthesize mainImage = _mainImage;
@synthesize selectionImage = _selectionImage;
@synthesize hoursImage = _hoursImage;
@synthesize phoneImage = _phoneImage;
@synthesize getDirectionsButton = _getDirectionsButton;


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
    _scroll.scrollEnabled = YES;

    _nameHeader.text = _name;
    _subHeader.text = _subHeaderText;
    _hours.text = _hoursText;
    _phone.text = _phoneNumber;
    _description.text = _descriptionText;
    [_description sizeToFit];
    
    _mainImage.image = [UIImage imageNamed:_mainImageString];
    _selectionImage.image = [UIImage imageNamed:_selectionImageString];
    _hoursImage.image = [UIImage imageNamed:@"tie.jpg"];
    _phoneImage.image = [UIImage imageNamed:@"tie.jpg"];
    
    int spacerHeight = 20;
    _getDirectionsButton.frame = CGRectMake(_getDirectionsButton.frame.origin.x,
                                  _description.frame.origin.y + _description.frame.size.height + spacerHeight,
                                  _getDirectionsButton.frame.size.width,
                                  _getDirectionsButton.frame.size.height);
    
    [_scroll setContentSize:CGSizeMake(320, _getDirectionsButton.frame.origin.y + _getDirectionsButton.frame.size.height + spacerHeight)];
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setNameHeader:nil];
    [self setMainImage:nil];
    [self setSubHeader:nil];
    [self setDescription:nil];
    [self setHours:nil];
    [self setPhone:nil];
    [self setHoursImage:nil];
    [self setSelectionImage:nil];
    [self setPhoneImage:nil];
    [self setGetDirectionsButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
