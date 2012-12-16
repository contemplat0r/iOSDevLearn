//
//  MyLunchPostViewController.m
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchPostViewController.h"
#import "MyLunchPhotosViewController.h"

@interface MyLunchPostViewController ()

@end

@implementation MyLunchPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"Post";
        label.center = self.view.center;
        [self.view addSubview:label];
        navigationController = [[[UINavigationController alloc]
                                                         initWithRootViewController:self] autorelease];
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Continue" style:UIBarButtonSystemItemDone target:self action:@selector(pushToPhotoView)];
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.rightBarButtonItem.enabled = YES;
        /*self.navigationController.navigationItem.rightBarButtonItem = rightButton;
        self.navigationController.navigationItem.rightBarButtonItem.enabled = YES;*/
        /*button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setFrame:CGRectMake(110, 190, 100, 20)];
        [button setTitle:@"Continue" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(pushToPhotoView) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];*/
        /*UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Post" image:nil tag:0];
        self.tabBarItem = item;*/
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

- (void)pushToPhotoView
{
    photosViewController = [[MyLunchPhotosViewController alloc]
                             initWithNibName:@"MyLunchPhotosViewController" bundle:nil];
    [self.navigationController pushViewController:photosViewController animated:YES];
    [photosViewController setNavigationController:self.navigationController];
    [photosViewController release];
}

@end