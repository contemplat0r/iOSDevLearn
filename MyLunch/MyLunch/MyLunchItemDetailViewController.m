//
//  MyLunchItemDetailViewController.m
//  MyLunch
//
//  Created by Administrator on 12/15/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchItemDetailViewController.h"

@interface MyLunchItemDetailViewController ()

@end

@implementation MyLunchItemDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"Item Detail View";
        label.center = self.view.center;
        [self.view addSubview:label];
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Back to Post" style:UIBarButtonSystemItemDone target:self action:@selector(popToPostViewController)];
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.rightBarButtonItem.enabled = YES;
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

- (void)setNavigationController:(UINavigationController *)nController
{
    navigationController = nController;
}

- (void) popToPostViewController
{
    if(navigationController != nil){
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

@end
