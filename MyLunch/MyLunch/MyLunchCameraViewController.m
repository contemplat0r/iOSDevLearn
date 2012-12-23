//
//  MyLunchCameraViewController.m
//  MyLunch
//
//  Created by Administrator on 12/14/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchCameraViewController.h"

@interface MyLunchCameraViewController ()

@end

@implementation MyLunchCameraViewController

- (void) loadView {
    
    CGRect frame = CGRectMake(0, 0, 320, 480);
    
    self.view = [[UIView alloc] initWithFrame:frame];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    frame = CGRectMake(100, 170, 100, 50);
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    
    label.text = @"Camera";
    label.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:label];
    /*UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Camera" image:nil tag:0];
    self.tabBarItem = item*;*/
    
    [label release];
}

/*- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}*/

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
