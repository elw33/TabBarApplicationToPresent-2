//
//  ClassDetailViewController.h
//  TabBarApplication
//
//  Created by IOSstudent on 10/17/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassDetailViewController : UIViewController


@property (nonatomic, strong) NSString * passedStr;

@property (weak, nonatomic) IBOutlet UITextField *ClassNameTextBox;
@property (weak, nonatomic) IBOutlet UITextField *TeacherNameTextBox;
@property (weak, nonatomic) IBOutlet UITextField *locationNameTextBox;
@property (weak, nonatomic) IBOutlet UILabel *waitingLabel;

- (IBAction)textFieldReturn:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *SaveButtonPressed;



@end
