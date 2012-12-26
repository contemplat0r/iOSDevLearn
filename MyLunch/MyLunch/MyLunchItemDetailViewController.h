//
//  MyLunchItemDetailViewController.h
//  MyLunch
//
//  Created by Administrator on 12/15/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "MyLunchDataStorage.h"


@interface MyLunchItemDetailViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>
{
    UINavigationController *navigationController;
    UITextField *lunchItemNameTextField;
    UITextView *lunchItemDescriptionTextView;
    MyLunchDataStorage *dataStorage;
    NSDictionary *lunchItem;
}

-(void)setNavigationController:(UINavigationController*)nController;
-(void)popToPostViewController;
-(void)createLunchItemNameTextField;
-(void)createLunchItemDescriptionTextView;

@end
