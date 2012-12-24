//
//  MyLunchPostViewController.h
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLunchPhotosViewController.h"
#import "MyLunchListViewController.h"
#import "MyLunchDataStorage.h"

@interface MyLunchPostViewController : UIViewController <UITextFieldDelegate>
{
    UIButton *addLunchItemButton;
    UINavigationController *navigationController;
    MyLunchPhotosViewController *photosViewController;
    UITextField *lunchItemNameTextField;
    //NSMutableArray *lunchItemsArray;
    MyLunchListViewController *listViewController;
    MyLunchDataStorage *dataStorage;
    //NSString *str;
    
}

//@property UITabBarItem *tbItem;

//@property(nonatomic, retain) UITextField *lunchItemNameTextField;
@property(nonatomic, weak) MyLunchListViewController *listViewController;

-(void)pushToPhotoView;
-(void)createLunchItemNameTextField;
-(void)addItemToLunch;

@end
