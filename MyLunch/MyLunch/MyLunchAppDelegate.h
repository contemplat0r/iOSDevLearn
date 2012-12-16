//
//  MyLunchAppDelegate.h
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLunchCameraViewController.h"

@interface MyLunchAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate> {
    UITabBarController *tabController;
    UIWindow *window;
    UIViewController *listViewController;
    UIViewController *postViewController;
    MyLunchCameraViewController *cameraViewController;
    
}

//@property (strong, nonatomic) UIWindow *window;
//@property (nonatomic, retain)IBOutlet UIWindow *window;
@property (nonatomic, strong) UIWindow *window;
//@property (nonatomic, retain) IBOutlet UITabBarController *tabController;
@property (nonatomic, strong) UITabBarController *tabController;

@end
