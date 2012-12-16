//
//  MyLunchPostViewController.h
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLunchPhotosViewController.h"

@interface MyLunchPostViewController : UIViewController
{
    UIButton *button;
    UINavigationController *navigationController;
    MyLunchPhotosViewController *photosViewController;
}

//@property UITabBarItem *tbItem;

-(void)pushToPhotoView;

@end
