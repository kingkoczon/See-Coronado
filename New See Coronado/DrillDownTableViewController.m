//
//  DrillDownTableViewController.m
//  See Coronado
//
//  Created by Robert Koczon on 10/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DrillDownTableViewController.h"
#import "DetailViewController.h"


@interface DrillDownTableViewController ()

@end

@implementation DrillDownTableViewController

@synthesize dataKey = _dataKey, drillDownKeys = _drillDownKeys, drillDown = _drillDown;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (_drillDownKeys == nil) {
        NSString * drillDownFile = [[NSBundle mainBundle] pathForResource:self.dataKey ofType:@"plist"];
        _drillDown = [NSDictionary dictionaryWithContentsOfFile:drillDownFile];
        self.drillDownKeys = [_drillDown objectForKey:@"items"];
        self.title = [_drillDown objectForKey:@"name"];
    }

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - UIStoryBoard Delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSDictionary * tier = (NSDictionary *)sender;
    if ([segue.identifier isEqualToString:@"loopbackSegue"]) {
        DrillDownTableViewController * loopbackController = segue.destinationViewController;
        loopbackController.drillDownKeys = [tier objectForKey:@"items"];
        loopbackController.navigationItem.title = [tier objectForKey:@"name"];
    } else if ([segue.identifier isEqualToString:@"detailViewSegue"]) {
        DetailViewController * detailController = segue.destinationViewController;
        detailController.name = [tier objectForKey:@"name"];
        detailController.subHeaderText = [tier objectForKey:@"subheader"];
        detailController.imageString = [tier objectForKey:@"image"];
        detailController.hoursText = [tier objectForKey:@"hours"];
        detailController.phoneNumber = [tier objectForKey:@"phone"];
        detailController.descriptionText = [tier objectForKey:@"description"];
    }
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.drillDownKeys count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIdentifier = @"drillCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell) {
        cell.textLabel.text = [[self.drillDownKeys objectAtIndex:indexPath.row] objectForKey:@"name"];
    }    
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * tier = [self.drillDownKeys objectAtIndex:indexPath.row];
    if ([tier objectForKey:@"items"]) {
        [self performSegueWithIdentifier:@"loopbackSegue" sender:tier];
    } else {
        [self performSegueWithIdentifier:@"detailViewSegue" sender:tier];
    }
}


@end
