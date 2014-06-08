//
//  TTViewController.m
//  MVVMSample
//
//  Created by Matt Chang on 2014/6/8.
//  Copyright (c) 2014年 Accuvally Inc. All rights reserved.
//

#import "TTViewController.h"

@interface TTViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) UITextField *nameTextField;
@property (strong, nonatomic) UITextField *numberTextField;
@property (strong, nonatomic) UITextField *birthTextField;
@property (strong, nonatomic) UITextField *positionTextField;
@property (strong, nonatomic) UITextField *emailTextField;
@property (strong, nonatomic) UITextField *descriptinTextField;

@property (strong, nonatomic) UIButton *registerButton;


- (void)decorateView;

@end

@implementation TTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self decorateView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private

- (void)decorateView {
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 64, 100, 30)];
    nameLabel.text = @"Name:";
    [self.view addSubview:nameLabel];
    
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(110, 64, 200, 30)];
    self.nameTextField.returnKeyType = UIReturnKeyDone;
    self.nameTextField.delegate = self;
    [self.view addSubview:self.nameTextField];
    
    UILabel *numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 94, 100, 30)];
    numberLabel.text = @"Number:";
    [self.view addSubview:numberLabel];
    
    self.numberTextField = [[UITextField alloc] initWithFrame:CGRectMake(110, 94, 200, 30)];
    self.numberTextField.keyboardType = UIKeyboardTypeNumberPad;
    self.numberTextField.delegate = self;
    [self.view addSubview:self.numberTextField];
    
    UILabel *birthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 124, 100, 30)];
    birthLabel.text = @"Birth Year:";
    [self.view addSubview:birthLabel];
    
    self.birthTextField = [[UITextField alloc] initWithFrame:CGRectMake(110, 124, 200, 30)];
    self.birthTextField.keyboardType = UIKeyboardTypeNumberPad;
    self.birthTextField.delegate = self;
    [self.view addSubview:self.birthTextField];
    
    UILabel *emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 154, 100, 30)];
    emailLabel.text = @"email:";
    [self.view addSubview:emailLabel];
    
    self.emailTextField = [[UITextField alloc] initWithFrame:CGRectMake(110, 154, 200, 30)];
    self.emailTextField.returnKeyType = UIReturnKeyDone;
    self.emailTextField.keyboardType = UIKeyboardTypeEmailAddress;
    self.emailTextField.delegate = self;
    [self.view addSubview:self.emailTextField];
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.view endEditing:YES];
    return YES;
}

@end
