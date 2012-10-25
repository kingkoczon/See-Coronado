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

@synthesize dataKey = _dataKey, drillDown = _drillDown, drillDownKeys = _drillDownKeys;

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
    
    NSString * drillDownFile = [[NSBundle mainBundle] pathForResource:self.dataKey ofType:@"plist"];
    NSDictionary * thelist = [NSDictionary dictionaryWithContentsOfFile:drillDownFile];
    self.drillDownKeys = [thelist objectForKey:@"items"];
    self.navigationItem.title = [thelist objectForKey:@"name"];

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
    NSDictionary * tier = (NSDictionary*)sender;
    if ([segue.identifier isEqualToString:@"loopbackSegue"]) {
        DrillDownTableViewController * nextController = segue.destinationViewController;
        nextController.drillDown = [tier objectForKey:@"items"];
        nextController.title = [tier objectForKey:@"name"];
    } else if ([segue.identifier isEqualToString:@"detailViewSegue"]) {
        DetailViewController * nextController = segue.destinationViewController;
        nextController.name = [tier objectForKey:@"name"];
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
    static NSString* cellIdentifier = @"drillCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell) {
        cell.textLabel.text = [[self.drillDownKeys objectAtIndex:indexPath.row] objectForKey:@"name"];
    }    
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary* tier = [self.drillDownKeys objectAtIndex:indexPath.row];
    if ([tier objectForKey:@"items"]) {
        [self performSegueWithIdentifier:@"loopbackSegue" sender:tier];
    } else {
        [self performSegueWithIdentifier:@"detailSegue" sender:tier];
    }
}


@end
