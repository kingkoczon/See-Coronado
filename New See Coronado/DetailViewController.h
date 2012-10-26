//
//  DetailViewController.h
//  See Coronado
//
//  Created by Robert Koczon on 10/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) NSString * name;

@property (nonatomic, weak) IBOutlet UILabel *nameHeader;
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;

@end
