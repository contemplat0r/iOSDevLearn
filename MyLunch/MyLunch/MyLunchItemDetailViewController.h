//
//  MyLunchItemDetailViewController.h
//  MyLunch
//
//  Created by Administrator on 12/15/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLunchItemDetailViewController : UIViewController
{
    UINavigationController *navigationController;
}
-(void)setNavigationController:(UINavigationController*)nController;
-(void)popToPostViewController;

@end
