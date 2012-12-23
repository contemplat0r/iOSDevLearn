//
//  MyLunchPhotosViewController.m
//  MyLunch
//
//  Created by Administrator on 12/15/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchPhotosViewController.h"

@interface MyLunchPhotosViewController ()

@end

@implementation MyLunchPhotosViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"Photos";
        label.center = self.view.center;
        [self.view addSubview:label];
        /*button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setFrame:CGRectMake(110, 190, 100, 20)];
        [button setTitle:@"Continue" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(pushToItemDetailView) forControlEvents:UIControlEventTouchUpInside];*/
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Continue" style:UIBarButtonSystemItemDone target:self action:@selector(pushToItemDetailView)];
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.rightBarButtonItem.enabled = YES;
        [self.view addSubview:button];
        
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

- (void)setNavigationController:(UINavigationController *)nController {
    navigationController = nController;
}

- (void)pushToItemDetailView {
    itemDetailViewController = [[MyLunchItemDetailViewController alloc]
                                initWithNibName:@"MyLunchItemDetailViewController" bundle:nil];
    [itemDetailViewController setNavigationController:self.navigationController];
    if(navigationController != nil){
        [self.navigationController pushViewController:itemDetailViewController animated:NO];
    }
}

@end
