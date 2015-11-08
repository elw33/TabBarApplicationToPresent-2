//
//  ClassDetailViewController.m
//  TabBarApplication
//
//  Created by IOSstudent on 10/17/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import "ClassDetailViewController.h"
#import "ClassTable.h"

@interface ClassDetailViewController ()

@end

@implementation ClassDetailViewController
@synthesize passedStr, ClassNameTextBox, TeacherNameTextBox, locationNameTextBox, waitingLabel ;


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
	// Do any additional setup after loading the view.
    self.navigationItem.title = passedStr;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SaveButtonPressed:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableString *ClassName_Key = [[NSMutableString alloc]initWithString:@"ClassName_"];
    NSMutableString *TeacherName_Key = [[NSMutableString alloc]initWithString:@"TeacherName_"];
    NSMutableString *LocationName_Key = [[NSMutableString alloc]initWithString:@"LocationName_"];
    [ClassName_Key appendString:passedStr];
    [TeacherName_Key appendString:passedStr];
    [LocationName_Key appendString:passedStr];
    [defaults setObject:ClassNameTextBox.text forKey:ClassName_Key];
    [defaults setObject:TeacherNameTextBox.text forKey:TeacherName_Key];
    [defaults setObject:locationNameTextBox.text forKey: LocationName_Key];
    NSLog(@"ClassName_Key is %@",[defaults objectForKey:ClassName_Key]);
    NSLog(@"TeacherName_Key is %@",[defaults objectForKey:TeacherName_Key]);
    NSLog(@"LocationName_Key is %@",[defaults objectForKey:LocationName_Key]);
    
    waitingLabel.text = @"Changes Applied Sucessfully";

}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    if ([ClassNameTextBox isFirstResponder] && [touch view] != ClassNameTextBox)
    {
        [ClassNameTextBox resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    if ([TeacherNameTextBox isFirstResponder] && [touch view] != TeacherNameTextBox)
    {
        [TeacherNameTextBox resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    if ([locationNameTextBox isFirstResponder] && [touch view] !=locationNameTextBox)
    {
        [locationNameTextBox resignFirstResponder];
    }
}
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}
@end
