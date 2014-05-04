//
//  LeftViewController.m
//  UniversalAppDemo
//
//  Created by Edison Martinez on 4/15/14.
//  Copyright (c) 2014 Cronix cia. ltda. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end



@implementation LeftViewController

- (NSArray *)mainMenuModel {
	return @[@"Home", @"Red", @"Green", @"Blue"]; //,@"Información"]; //TODO: extraer a recursos
}


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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [super setTitle:@"Menu"];
    //title color
	self.navigationController.navigationBar.titleTextAttributes = @{ NSForegroundColorAttributeName: [UIColor customOrange] };
    self.view.backgroundColor = [UIColor customBlue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
	return [[self mainMenuModel] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    //value
	cell.textLabel.text = [self mainMenuModel][indexPath.row];
	//value
    
    //style
    cell.textLabel.font  = [UIFont fontWithName:@"HelveticaNeue-Ligth" size:22.0f];
    cell.textLabel.textColor = [UIColor customWhite];
    cell.backgroundColor = [UIColor customOrange];
    //style
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [self storyboard];
    UINavigationController *navController = [[[self splitViewController ] viewControllers ] lastObject ];
    //UIViewController *oldController = [[navController viewControllers] firstObject];
    UIViewController *newController = nil;
    switch (indexPath.row) {
        case 0:
            newController = [storyboard instantiateViewControllerWithIdentifier:@"vchome"];
            break;
        case 1:
            newController = [storyboard instantiateViewControllerWithIdentifier:@"vcred"];
            break;
        case 2:
            newController = [storyboard instantiateViewControllerWithIdentifier:@"vcgreen"];
            break;
        case 3:
            newController = [storyboard instantiateViewControllerWithIdentifier:@"vcblue"];
            break;
        default:
            break;
    }
    
    NSArray *newStack = [NSArray arrayWithObjects:newController, nil ];
    [navController setViewControllers:newStack];

}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
	UILabel *tempView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 2)];
	tempView.text = @"";
	tempView.backgroundColor = [UIColor customOrange];
    return tempView;
}

@end
