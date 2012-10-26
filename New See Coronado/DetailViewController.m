//
//  DetailViewController.m
//  See Coronado
//
//  Created by Robert Koczon on 10/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize name = _name;
@synthesize nameHeader = _nameHeader;
@synthesize mainImage = _mainImage;

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
    _nameHeader.text = self.name;
    
    UIImage * mainImg = [UIImage imageNamed:@"bb.png"];
    _mainImage.image = mainImg;
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setNameHeader:nil];
    [self setMainImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
