//
//  MyLunchPostViewController.m
//  MyLunch
//
//  Created by Administrator on 12/13/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchPostViewController.h"
#import "MyLunchPhotosViewController.h"
#import "MyLunchDataStorage.h"

@interface MyLunchPostViewController ()

@end

@implementation MyLunchPostViewController

//@synthesize lunchItemNameTextField;
@synthesize listViewController;

- (void)dealloc
{
    [lunchItemNameTextField release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        /*UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"Post";
        label.center = self.view.center;
        [self.view addSubview:label];*/
        navigationController = [[[UINavigationController alloc]
                                                         initWithRootViewController:self] autorelease];
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Continue" style:UIBarButtonSystemItemDone target:self action:@selector(pushToPhotoView)];
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.rightBarButtonItem.enabled = YES;
        [self createLunchItemNameTextField];
        /*self.navigationController.navigationItem.rightBarButtonItem = rightButton;
        self.navigationController.navigationItem.rightBarButtonItem.enabled = YES;*/
        addLunchItemButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [addLunchItemButton setFrame:CGRectMake(110, 190, 100, 20)];
        [addLunchItemButton setTitle:@"Add item" forState:UIControlStateNormal];
        [addLunchItemButton addTarget:self action:@selector(addItemToLunch) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:addLunchItemButton];

        /*UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Post" image:nil tag:0];
        self.tabBarItem = item;*/
        // Custom initialization
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    dataStorage= [MyLunchDataStorage sharedInstance];
    dataStorage.lunchItemsArray = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushToPhotoView
{
    photosViewController = [[MyLunchPhotosViewController alloc]
                             initWithNibName:@"MyLunchPhotosViewController" bundle:nil];
    [self.navigationController pushViewController:photosViewController animated:NO];
    [photosViewController setNavigationController:self.navigationController];
    [photosViewController release];
}

- (void)createLunchItemNameTextField
{
    lunchItemNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, 280, 31)];
    lunchItemNameTextField.borderStyle = UITextBorderStyleLine;
    lunchItemNameTextField.textColor = [UIColor blackColor];
    lunchItemNameTextField.font = [UIFont systemFontOfSize:17.0];
    lunchItemNameTextField.placeholder = @"Lunch item name";
    lunchItemNameTextField.backgroundColor = [UIColor clearColor];
    lunchItemNameTextField.autocorrectionType = UITextAutocorrectionTypeNo;
    lunchItemNameTextField.keyboardType = UIKeyboardTypeDefault;
    lunchItemNameTextField.keyboardAppearance = UIKeyboardAppearanceDefault;
    lunchItemNameTextField.returnKeyType = UIReturnKeyDone;
    lunchItemNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:lunchItemNameTextField];
    lunchItemNameTextField.delegate = self;
}

- (void)addItemToLunch
{
    /*if (listViewController != nil)
    {
        if (listViewController.view)
        {
            [listViewController.lunchItemsArray addObject:lunchItemNameTextField.text];
            lunchItemNameTextField.text = nil;
            lunchItemNameTextField.placeholder = @"Lunch item name";
        }
    }*/
    
    if (dataStorage &&  dataStorage.lunchItemsArray != nil)
        [dataStorage.lunchItemsArray addObject:lunchItemNameTextField.text];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
