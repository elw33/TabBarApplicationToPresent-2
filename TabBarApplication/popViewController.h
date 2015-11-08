//
//  popViewController.h
//  popOver
//
//  Created by IOSstudent on 11/1/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface popViewController : UIViewController {
    
    IBOutlet UIScrollView *scrollView;
    
    
    IBOutlet UIButton *openMenu;
    IBOutlet UIButton *bBlock;
    bool draw1;
    IBOutlet UIButton *save;
    NSMutableArray *userInfoArray;
    
    NSString* A1Info;
    NSString* A2Info;
    NSString* A3Info;
    NSString* A4Info;
    
    NSString* B1Info;
    NSString* B2Info;
    NSString* B3Info;
    NSString* B4Info;
    
    NSString* C1Info;
    NSString* C2Info;
    NSString* C3Info;
    NSString* C4Info;
    
    NSString* D1Info;
    NSString* D2Info;
    NSString* D3Info;
    NSString* D4Info;
    
    NSString* E1Info;
    NSString* E2Info;
    NSString* E3Info;
    NSString* E4Info;
    
    NSString* F1Info;
    NSString* F2Info;
    NSString* F3Info;
    NSString* F4Info;
    
}
-(IBAction)OpenMenu:(id)sender;
-(IBAction)Save:(id)sender;



@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UITextView *textBox;
@property (strong, nonatomic) IBOutlet UITextView *textBox2;
@property (strong, nonatomic) IBOutlet UITextView *textBox3;
@property (strong, nonatomic) IBOutlet UITextView *textBox4;

@property (weak, nonatomic) IBOutlet UILabel *firstClass;
@property (weak, nonatomic) IBOutlet UILabel *secondClass;
@property (weak, nonatomic) IBOutlet UILabel *thirdClass;
@property (weak, nonatomic) IBOutlet UILabel *fourthClass;





@end
