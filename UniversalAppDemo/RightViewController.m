//
//  RightViewController.m
//  UniversalAppDemo
//
//  Created by Edison Martinez on 4/15/14.
//  Copyright (c) 2014 Cronix cia. ltda. All rights reserved.
//

#import "RightViewController.h"

@interface RightViewController ()

@end

@implementation RightViewController

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
    // Do any additional setup after loading the view.
    [super setTitle:@"Home"];
    //title color
	self.navigationController.navigationBar.titleTextAttributes = @{ NSForegroundColorAttributeName: [UIColor customOrange] };
    self.view.backgroundColor = [UIColor customBlue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
