//
//  DetailViewController.m
//  See Coronado
//
//  Created by Robert Koczon on 10/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "DrillDownTableViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize scroll = _scroll;

@synthesize name = _name;
@synthesize subHeaderText = _subHeaderText;
@synthesize imageString = _imageString;
@synthesize hoursText = _hoursText;
@synthesize phoneNumber = _phoneNumber;
@synthesize descriptionText = _descriptionText;

@synthesize nameHeader = _nameHeader;
@synthesize mainImage = _mainImage;
@synthesize subHeader = _subHeader;
@synthesize description = _description;
@synthesize hours = _hours;
@synthesize phone = _phone;


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
    [self.view sizeToFit];
    _scroll.scrollEnabled = YES;

    

    _nameHeader.text = _name;
    _subHeader.text = _subHeaderText;
    _mainImage.image = [UIImage imageNamed:_imageString];
    _hours.text = _hoursText;
    _phone.text = _phoneNumber;
    _description.text = _descriptionText;
    [_description sizeToFit];
    [_scroll setContentSize:CGSizeMake(320, _description.frame.origin.y+_description.frame.size.height)];
    
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
