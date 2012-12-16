//
//  MyLunchPhotosViewController.h
//  MyLunch
//
//  Created by Administrator on 12/15/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLunchItemDetailViewController.h"

@interface MyLunchPhotosViewController : UIViewController
{
    UIButton *button;
    MyLunchItemDetailViewController *itemDetailViewController;
    UINavigationController *navigationController;
}


-(void)pushToItemDetailView;
-(void)setNavigationController:(UINavigationController*)nController;

@end
