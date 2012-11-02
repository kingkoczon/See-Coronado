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
@property (nonatomic, strong) NSString * imageString;
@property (nonatomic, strong) NSString * hoursText;
@property (nonatomic, strong) NSString * phoneNumber;

@property (nonatomic, weak) IBOutlet UILabel * nameHeader;
@property (nonatomic, weak) IBOutlet UIImageView * mainImage;
@property (weak, nonatomic) IBOutlet UILabel * subHeader;
@property (weak, nonatomic) IBOutlet UILabel *description;
@property (weak, nonatomic) IBOutlet UILabel *hours;
@property (weak, nonatomic) IBOutlet UILabel *phone;

@end
