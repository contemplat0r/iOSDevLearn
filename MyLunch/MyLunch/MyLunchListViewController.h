//
//  MyLunchListViewController.h
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLunchDataStorage.h"

@interface MyLunchListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    MyLunchDataStorage *dataStorage;
}

@property (nonatomic, strong) UITableView *lunchItemsListTableView;

@end
