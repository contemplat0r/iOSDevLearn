//
//  MyLunchAppDelegate.h
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLunchPostViewController.h"
#import "MyLunchListViewController.h"
#import "MyLunchCameraViewController.h"
#import "MyLunchDataStorage.h"


@interface MyLunchAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate> {
    UITabBarController *tabController;
    UIWindow *window;
    MyLunchListViewController *listViewController;
    MyLunchPostViewController *postViewController;
    MyLunchCameraViewController *cameraViewController;
    
}

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UITabBarController *tabController;

@end
