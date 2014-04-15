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
	cell.textLabel.font  = [UIFont fontWithName:@"HelveticaNeue-Thin" size:18.0f];
	//value
    
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
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
