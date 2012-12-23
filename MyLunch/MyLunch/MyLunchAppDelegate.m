//
//  MyLunchAppDelegate.m
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchAppDelegate.h"

@implementation MyLunchAppDelegate
@synthesize tabController;
@synthesize window;

- (void)dealloc
{
    //[_window release];
    [tabController release];
    [listViewController release];
    [postViewController release];
    [window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    UITabBarController *tbController = [[UITabBarController alloc] init];
    postViewController = [[MyLunchPostViewController alloc] initWithNibName:@"MyLunchPostViewController" bundle:nil];
    listViewController = [[MyLunchListViewController alloc] initWithNibName:@"MyLunchListViewController" bundle:nil];
    cameraViewController = [[[MyLunchCameraViewController alloc] init] autorelease];
    postViewController.listViewController = listViewController;
    
    postViewController.navigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Post" image:nil tag:0];
    cameraViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Camera" image:nil tag:0];
    NSArray *controllers = [NSArray arrayWithObjects:[postViewController navigationController], listViewController, cameraViewController, nil];
    

    tbController.viewControllers = controllers;
    
    self.window.rootViewController = tbController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [tbController release];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
