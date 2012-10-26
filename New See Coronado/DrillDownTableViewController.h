//
//  DrillDownTableViewController.h
//  See Coronado
//
//  Created by Robert Koczon on 10/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrillDownTableViewController : UITableViewController

@property (atomic, strong) NSString * dataKey;
@property (nonatomic, strong) NSArray * drillDownKeys;

@end
