//
//  popViewController.m
//  popOver
//
//  Created by IOSstudent on 11/1/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import "popViewController.h"

@interface popViewController ()


@end

@implementation popViewController
@synthesize scrollView, textBox, textBox2, textBox3, textBox4, firstClass,secondClass,thirdClass,fourthClass;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    draw1 = NO;
    scrollView.frame = CGRectMake(72, 570, 228, 483);
    [scrollView setContentSize:CGSizeMake(228, 483)];
    
    openMenu.frame = CGRectMake(20, 38, 38, 30);
    
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize: CGSizeMake (228,700)];
 
    
}


- (IBAction)OpenMenu:(id)sender {
    
    NSString *block = [sender currentTitle]; //decides which button was pressed
    
    if ([block  isEqual: @"A-Block"]) {
        firstClass.text = @"Monday"; // loads what day you have that class
        secondClass.text = @"Tuesday";
        thirdClass.text = @"Thursday";
        fourthClass.text = @"Saturday";
        
         if (draw1 == NO) {
            draw1 = YES;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 34, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
             
             NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
             
             A1Info = [prefs objectForKey:@"textField1AText"];
             textBox.text = A1Info;
             
             A2Info = [prefs objectForKey:@"textField2AText"];
             textBox2.text = A2Info;
             
             A3Info = [prefs objectForKey:@"textField3AText"];
             textBox3.text = A3Info;

             A4Info = [prefs objectForKey:@"textField4AText"];
             textBox4.text = A4Info;
            
        } else {
            draw1 = YES;
            
            NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
            A1Info = textBox.text;
            [prefs setObject:A1Info forKey:@"textField1AText"];
            A2Info = textBox2.text;
            [prefs setObject:A2Info forKey:@"textField2AText"];
            A3Info = textBox3.text;
            [prefs setObject:A3Info forKey:@"textField3AText"];
            A4Info = textBox4.text;
            [prefs setObject:A4Info forKey:@"textField4AText"];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 570, 228, 483);
         
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            draw1 = NO;
            
            }
    }
    if ([block  isEqual: @"B-Block"]) {
        firstClass.text = @"Monday";
        secondClass.text = @"Wednesday";
        thirdClass.text = @"Thursday";
        fourthClass.text = @"Friday";
        
        if (draw1 == NO) {
            draw1 = YES;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
            scrollView.frame = CGRectMake(72, 34, 228, 483);
           
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
        
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            
            B1Info = [prefs objectForKey:@"textField1BText"];
            textBox.text = B1Info;
            
            B2Info = [prefs objectForKey:@"textField2BText"];
            textBox2.text = B2Info;
            
            B3Info = [prefs objectForKey:@"textField3BText"];
            textBox3.text = B3Info;
            
            B4Info = [prefs objectForKey:@"textField4BText"];
            textBox4.text = B4Info;
            
        } else {
            draw1 = NO;
            
            NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
            B1Info = textBox.text;
            [prefs setObject:B1Info forKey: @"textField1BText"];
            B2Info = textBox2.text;
            [prefs setObject:B2Info forKey:@"textField2BText"];
            B3Info = textBox3.text;
            [prefs setObject:B3Info forKey:@"textField3BText"];
            B4Info = textBox4.text;
            [prefs setObject:B4Info forKey:@"textField4BText"];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 570, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
        }
    }
    
    if ([block  isEqual: @"C-Block"]) {
        firstClass.text = @"Monday";
        secondClass.text = @"Tuesday";
        thirdClass.text = @"Wednesday";
        fourthClass.text = @"Friday";
        
        if (draw1 == NO) {
            draw1 = YES;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 34, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            
            C1Info = [prefs objectForKey:@"textField1CText"];
            textBox.text = C1Info;
            
            C2Info = [prefs objectForKey:@"textField2CText"];
            textBox2.text = C2Info;
            
            C3Info = [prefs objectForKey:@"textField3CText"];
            textBox3.text = C3Info;
            
            C4Info = [prefs objectForKey:@"textField4CText"];
            textBox4.text = C4Info;
            
        } else {
            draw1 = YES;
            
            NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
            C1Info = textBox.text;
            [prefs setObject:C1Info forKey:@"textField1CText"];
            C2Info = textBox2.text;
            [prefs setObject:C2Info forKey:@"textField2CText"];
            C3Info = textBox3.text;
            [prefs setObject:C3Info forKey:@"textField3CText"];
            C4Info = textBox4.text;
            [prefs setObject:C4Info forKey:@"textField4CText"];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 570, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            draw1 = NO;
            
        }
    }

    if ([block  isEqual: @"D-Block"]) {
        firstClass.text = @"Monday";
        secondClass.text = @"Tuesday";
        thirdClass.text = @"Friday";
        fourthClass.text = @"Saturday";
        
        if (draw1 == NO) {
            draw1 = YES;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 34, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            
            D1Info = [prefs objectForKey:@"textField1DText"];
            textBox.text = D1Info;
            
            D2Info = [prefs objectForKey:@"textField2DText"];
            textBox2.text = D2Info;
            
            D3Info = [prefs objectForKey:@"textField3DText"];
            textBox3.text = D3Info;
            
            D4Info = [prefs objectForKey:@"textField4DText"];
            textBox4.text = D4Info;
            
        } else {
            draw1 = YES;
            
            NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
            D1Info = textBox.text;
            [prefs setObject:D1Info forKey:@"textField1DText"];
            D2Info = textBox2.text;
            [prefs setObject:D2Info forKey:@"textField2DText"];
            D3Info = textBox3.text;
            [prefs setObject:D3Info forKey:@"textField3DText"];
            D4Info = textBox4.text;
            [prefs setObject:D4Info forKey:@"textField4DText"];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 570, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            draw1 = NO;
            
        }
    }
    if ([block  isEqual: @"E-Block"]) {
        firstClass.text = @"Monday";
        secondClass.text = @"Tuesday";
        thirdClass.text = @"Thursday";
        fourthClass.text = @"Saturday";
        
        if (draw1 == NO) {
            draw1 = YES;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 34, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            
            E1Info = [prefs objectForKey:@"textField1EText"];
            textBox.text = E1Info;
            
            E2Info = [prefs objectForKey:@"textField2EText"];
            textBox2.text = E2Info;
            
            E3Info = [prefs objectForKey:@"textField3EText"];
            textBox3.text = E3Info;
            
            E4Info = [prefs objectForKey:@"textField4EText"];
            textBox4.text = E4Info;
            
        } else {
            draw1 = YES;
            
            NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
            E1Info = textBox.text;
            [prefs setObject:E1Info forKey:@"textField1EText"];
            E2Info = textBox2.text;
            [prefs setObject:E2Info forKey:@"textField2EText"];
            E3Info = textBox3.text;
            [prefs setObject:E3Info forKey:@"textField3EText"];
            E4Info = textBox4.text;
            [prefs setObject:E4Info forKey:@"textField4EText"];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 570, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            draw1 = NO;
            
        }
    }
    if ([block  isEqual: @"F-Block"]) {
        firstClass.text = @"Monday";
        secondClass.text = @"Wednesday";
        thirdClass.text = @"Thursday";
        fourthClass.text = @"Friday";
        
        if (draw1 == NO) {
            draw1 = YES;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 34, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            
            F1Info = [prefs objectForKey:@"textField1FText"];
            textBox.text = F1Info;
            
            F2Info = [prefs objectForKey:@"textField2FText"];
            textBox2.text = F2Info;
            
            F3Info = [prefs objectForKey:@"textField3FText"];
            textBox3.text = F3Info;
            
            F4Info = [prefs objectForKey:@"textField4FText"];
            textBox4.text = F4Info;
            
        } else {
            draw1 = YES;
            
            NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
            F1Info = textBox.text;
            [prefs setObject:F1Info forKey:@"textField1FText"];
            F2Info = textBox2.text;
            [prefs setObject:F2Info forKey:@"textField2FText"];
            F3Info = textBox3.text;
            [prefs setObject:F3Info forKey:@"textField3FText"];
            F4Info = textBox4.text;
            [prefs setObject:F4Info forKey:@"textField4FText"];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.5];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            
            scrollView.frame = CGRectMake(72, 570, 228, 483);
            
            [self.view bringSubviewToFront:scrollView];
            
            [UIView commitAnimations];
            
            draw1 = NO;
            
        }
    }
}
-(IBAction)Save:(id)sender; {
    
//    NSUserDefaults *prefs=[NSUserDefaults standardUserDefaults];
    
//    A1Info = textBox.text;
//    [prefs setObject:A1Info forKey:@"textField1AText"];
//    
//    A2Info = textBox2.text;
//    [prefs setObject:A2Info forKey:@"textField2AText"];
//    
//    B1Info = textBox.text;
//    [prefs setObject:B1Info forKey: @"textField1BText"];
//    
//    [prefs synchronize];
    
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {  //hides keyboard
    UITouch *touch = [[event allTouches] anyObject];
    if ([textBox isFirstResponder] && [touch view] !=textBox)
    {
        [textBox resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch2 = [[event allTouches] anyObject];
    if ([textBox2 isFirstResponder] && [touch2 view] !=textBox2)
    {
        [textBox2 resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch3 = [[event allTouches] anyObject];
    if ([textBox3 isFirstResponder] && [touch3 view] !=textBox3)
        {
        [textBox3 resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch4 = [[event allTouches] anyObject];
    if ([textBox4 isFirstResponder] && [touch4 view] !=textBox4)
    {
        [textBox2 resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
@end