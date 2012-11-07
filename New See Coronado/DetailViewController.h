//
//  DetailViewController.h
//  See Coronado
//
//  Created by Robert Koczon on 10/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIScrollView * scroll;

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * subHeaderText;
@property (nonatomic, strong) NSString * descriptionText;
@property (nonatomic, strong) NSString * hoursText;
@property (nonatomic, strong) NSString * phoneNumber;
@property (nonatomic, strong) NSString * mainImageString;
@property (nonatomic, strong) NSString * selectionImageString;

@property (nonatomic, weak) IBOutlet UILabel * nameHeader;
@property (weak, nonatomic) IBOutlet UILabel * subHeader;
@property (weak, nonatomic) IBOutlet UILabel * description;
@property (weak, nonatomic) IBOutlet UILabel * hours;
@property (weak, nonatomic) IBOutlet UILabel * phone;

@property (nonatomic, weak) IBOutlet UIImageView * mainImage;
@property (weak, nonatomic) IBOutlet UIImageView * selectionImage;
@property (weak, nonatomic) IBOutlet UIImageView * hoursImage;
@property (weak, nonatomic) IBOutlet UIImageView * phoneImage;

@property (weak, nonatomic) IBOutlet UIButton * getDirectionsButton;
@end
