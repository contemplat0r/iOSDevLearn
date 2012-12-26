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
        [self createNavigationController];
        /*UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"List" image:nil tag:0];
        self.tabBarItem = item;*/
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.lunchItemsListTableView = [[UITableView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, (self.view.frame.size.height * 3)/4) style:UITableViewStylePlain];
    [self.view addSubview:self.lunchItemsListTableView];
    self.lunchItemsListTableView.delegate = self;
    self.lunchItemsListTableView.dataSource = self;
    dataStorage = [MyLunchDataStorage sharedInstance];
    
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated
{
    [self.lunchItemsListTableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return [lunchItemsArray count];
    return [dataStorage.lunchItemsArray count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIndetifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:cellIndetifier];
    if (cell == nil)
    {
        //cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:cellIndetifier] autorelease];
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndetifier] autorelease];
    }
    
    //NSString *cellValue = [lunchItemsArray objectAtIndex:indexPath.row];
    NSDictionary *lunchItem = [dataStorage.lunchItemsArray objectAtIndex:indexPath.row];
    //NSString *cellValue = [dataStorage.lunchItemsArray objectAtIndex:indexPath.row];
    NSString *cellValue = lunchItem[@"itemName"];
    cell.textLabel.text = cellValue;
    return cell;
}

- (void)createNavigationController
{
    navigationController = [[[UINavigationController alloc]
                             initWithRootViewController:self] autorelease];
    /*UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Continue" style:UIBarButtonSystemItemDone target:self action:@selector(pushToPhotoView)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.rightBarButtonItem.enabled = YES;*/
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    itemDetailViewController = [[MyLunchItemDetailViewController alloc]
                                initWithNibName:@"MyLunchItemDetailViewController" bundle:nil];
    [itemDetailViewController setNavigationController:self.navigationController];
    itemDetailViewController.navigationItem.rightBarButtonItem = nil;
    if(navigationController != nil){
        [self.navigationController pushViewController:itemDetailViewController animated:NO];
    }
}

@end
