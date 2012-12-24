//
//  MyLunchListViewController.m
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchListViewController.h"
#import "MyLunchDataStorage.h"

@interface MyLunchListViewController ()


@end

@implementation MyLunchListViewController

@synthesize lunchItemsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        /*UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"List";
        label.center = self.view.center;
        [self.view addSubview:label];*/
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"List" image:nil tag:0];
        self.tabBarItem = item;
        // Custom initialization
        lunchItemsArray = [[NSMutableArray alloc] init];
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
    [self.lunchItemsListTableView reloadData];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    /*if (lunchItemsArray != nil)
        return [lunchItemsArray count];
    else
        return 0;*/
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
    NSString *cellValue = [dataStorage.lunchItemsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    return cell;
}


@end
