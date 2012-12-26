//
//  MyLunchItemDetailViewController.m
//  MyLunch
//
//  Created by Administrator on 12/15/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchItemDetailViewController.h"

@interface MyLunchItemDetailViewController ()

@end

@implementation MyLunchItemDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        /*UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                   self.view.frame.size.width/2,
                                                                   self.view.frame.size.height/2,
                                                                   180,
                                                                   20)];
        label.text = @"Item Detail View";
        label.center = self.view.center;
        [self.view addSubview:label];*/
        /*UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Back to Post" style:UIBarButtonSystemItemDone target:self action:@selector(popToPostViewController)];
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.rightBarButtonItem.enabled = YES;*/
        /*if (self.navigationItem.rightBarButtonItem != nil) {
            [self.navigationItem.rightBarButtonItem setTitle:@"Back to Post"];
            [self.navigationItem.rightBarButtonItem setTarget:self];
            [self.navigationItem.rightBarButtonItem setAction:@selector(popToPostViewController)];
        }*/
        dataStorage = [MyLunchDataStorage sharedInstance];
        lunchItem = [dataStorage.lunchItemsArray objectAtIndex:dataStorage.currentIndex];
        [self createLunchItemNameTextField];
        [self createLunchItemDescriptionTextView];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    /*if (self.navigationItem.rightBarButtonItem != nil) {
        [self.navigationItem.rightBarButtonItem setTitle:@"Back to Post"];
        [self.navigationItem.rightBarButtonItem setTarget:self];
        [self.navigationItem.rightBarButtonItem setAction:@selector(popToPostViewController)];
    }*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNavigationController:(UINavigationController *)nController
{
    navigationController = nController;
}

- (void) popToPostViewController
{
    if(navigationController != nil){
        [self.navigationController popToRootViewControllerAnimated:NO];
    }
}


- (void)createLunchItemNameTextField
{
    lunchItemNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 280, 31)];
    lunchItemNameTextField.text = lunchItem[@"itemName"];
    //lunchItemNameTextField.center = self.view.center;
    /*lunchItemNameTextField.borderStyle = UITextBorderStyleLine;
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
    lunchItemNameTextField.delegate = self;*/
    //[self.view addSubview:lunchItemNameLabel];
    [self.view addSubview:lunchItemNameTextField];
}

- (void)createLunchItemDescriptionTextView
{
    lunchItemDescriptionTextView = [[UITextView alloc] initWithFrame:CGRectMake(20, 70, 280, 250)];
    lunchItemDescriptionTextView.textColor = [UIColor blackColor];
    lunchItemDescriptionTextView.font = [UIFont systemFontOfSize:17.0];
    lunchItemDescriptionTextView.backgroundColor = [UIColor clearColor];
    [lunchItemDescriptionTextView.layer setBorderColor:[[UIColor grayColor] CGColor]];
    [lunchItemDescriptionTextView.layer setBorderWidth:1.0];
    [lunchItemDescriptionTextView.layer setMasksToBounds:YES];
    /*lunchItemDescriptionTextView.autocorrectionType = UITextAutocorrectionTypeNo;
    lunchItemDescriptionTextView.keyboardType = UIKeyboardTypeDefault;
    lunchItemDescriptionTextView.keyboardAppearance = UIKeyboardAppearanceDefault;
    lunchItemDescriptionTextView.returnKeyType = UIReturnKeyDone;*/
    lunchItemDescriptionTextView.text = lunchItem[@"itemDescription"];
    [self.view addSubview:lunchItemDescriptionTextView];
    lunchItemDescriptionTextView.delegate = self;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    return NO;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return NO;
}

@end
