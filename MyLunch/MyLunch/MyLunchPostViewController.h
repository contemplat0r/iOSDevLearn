//
//  MyLunchPostViewController.h
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "MyLunchPhotosViewController.h"
#import "MyLunchListViewController.h"
#import "MyLunchDataStorage.h"

@interface MyLunchPostViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>
{
    UIButton *addLunchItemButton;
    UINavigationController *navigationController;
    MyLunchPhotosViewController *photosViewController;
    UITextField *lunchItemNameTextField;
    UITextView *lunchDescriptionTextView;
    MyLunchListViewController *listViewController;
    MyLunchDataStorage *dataStorage;    
}

@property(nonatomic, weak) MyLunchListViewController *listViewController;

-(void)pushToPhotoView;
-(void)createLunchItemNameTextField;
-(void)createLunchDescriptionTextView;
-(void)createAddLunchItemButton;
-(void)createNavigationController;
-(void)addItemToLunchDataStorage;

@end
