//
//  MyLunchListViewController.m
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchListViewController.h"

@interface MyLunchListViewController ()

@end

@implementation MyLunchListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"List";
        label.center = self.view.center;
        [self.view addSubview:label];
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"List" image:nil tag:0];
        self.tabBarItem = item;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
