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

@synthesize listViewController;

- (void)dealloc
{
    [lunchItemNameTextField release];
    [lunchDescriptionTextView release];
    [navigationController release];
    [addLunchItemButton release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        navigationController = [[[UINavigationController alloc]
                                                         initWithRootViewController:self] autorelease];
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Continue" style:UIBarButtonSystemItemDone target:self action:@selector(pushToPhotoView)];
        self.navigationItem.rightBarButtonItem = rightButton;
        self.navigationItem.rightBarButtonItem.enabled = YES;
        [self createLunchItemNameTextField];
        [self createLunchDescriptionTextView];
        [self createAddLunchItemButton];

        dataStorage = [MyLunchDataStorage sharedInstance];
        dataStorage.lunchItemsArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createAddLunchItemButton
{
    addLunchItemButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [addLunchItemButton setFrame:CGRectMake(110, 330, 100, 20)];
    [addLunchItemButton setTitle:@"Add item" forState:UIControlStateNormal];
    [addLunchItemButton addTarget:self action:@selector(addItemToLunchDataStorage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addLunchItemButton];
}

- (void)createLunchItemNameTextField
{
    lunchItemNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 280, 31)];
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

- (void)createLunchDescriptionTextView
{
    lunchDescriptionTextView = [[UITextView alloc] initWithFrame:CGRectMake(20, 70, 280, 250)];
    lunchDescriptionTextView.textColor = [UIColor blackColor];
    lunchDescriptionTextView.font = [UIFont systemFontOfSize:17.0];
    lunchDescriptionTextView.backgroundColor = [UIColor clearColor];
    [lunchDescriptionTextView.layer setBorderColor:[[UIColor grayColor] CGColor]];
    [lunchDescriptionTextView.layer setBorderWidth:1.0];
    [lunchDescriptionTextView.layer setMasksToBounds:YES];
    lunchDescriptionTextView.autocorrectionType = UITextAutocorrectionTypeNo;
    lunchDescriptionTextView.keyboardType = UIKeyboardTypeDefault;
    lunchDescriptionTextView.keyboardAppearance = UIKeyboardAppearanceDefault;
    lunchDescriptionTextView.returnKeyType = UIReturnKeyDone;
    [self.view addSubview:lunchDescriptionTextView];
    lunchDescriptionTextView.delegate = self;
}

- (void)addItemToLunchDataStorage
{
    if (listViewController != nil)
    {
        if (dataStorage &&  dataStorage.lunchItemsArray != nil)
        {
            NSDictionary *lunchItem = [NSDictionary dictionaryWithObjectsAndKeys:
                                       lunchItemNameTextField.text, @"itemName",
                                       lunchDescriptionTextView.text, @"itemDescription",
                                       nil];
            //[dataStorage.lunchItemsArray addObject:lunchItemNameTextField.text];
            [dataStorage.lunchItemsArray addObject:lunchItem];
            [dataStorage setCurrentIndex:(dataStorage.lunchItemsArray.count - 1)];
            lunchItemNameTextField.text = nil;
            lunchItemNameTextField.placeholder = @"Lunch item name";
            lunchDescriptionTextView.text = nil;
            //[lunchItem release];
        }
    }
}

- (void)pushToPhotoView
{
    photosViewController = [[MyLunchPhotosViewController alloc]
                            initWithNibName:@"MyLunchPhotosViewController" bundle:nil];
    [self.navigationController pushViewController:photosViewController animated:NO];
    [photosViewController setNavigationController:self.navigationController];
    [photosViewController release];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

/*- (BOOL) textViewShouldEndEditing:(UITextView *)textView
{
    [textView resignFirstResponder];
    return YES;
}*/

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    if ([lunchDescriptionTextView isFirstResponder] && [touch view] != lunchDescriptionTextView)
    {
        [lunchDescriptionTextView resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
