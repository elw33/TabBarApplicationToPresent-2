//
//  CurrentScheduleViewController.m
//  TabBarApplication
//
//  Created by IOSstudent on 10/17/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import "CurrentScheduleViewController.h"
#import "CompareDates.h"

@interface CurrentScheduleViewController ()

@end

@implementation CurrentScheduleViewController

@synthesize currentDateLabel, swipeEventLabel, firstPeriodLetterLabel, secondPeriodLetterLabel, thirdPeriodLetterLabel, fourthPeriodLetterLabel, fifthPeriodLetterLabel, sixthPeriodLetterLabel, firstPeriodDurationLabel, secondPeriodDurationLabel, thirdPeriodDurationLabel, fourthPeriodDurationLabel, fifthPeriodDurationLabel, sixthPeriodDurationLabel;

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
    NSDate *today = [NSDate date];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *weekdayComponents = [gregorian components:(NSDayCalendarUnit | NSWeekdayCalendarUnit) fromDate:today];
    NSInteger weekday = [weekdayComponents weekday];
    switch (weekday)
    {
            
        case 1: // Sunday
            [firstPeriodLetterLabel setText:@"-"];
            [secondPeriodLetterLabel setText:@"-"];
            [thirdPeriodLetterLabel setText:@"-"];
            [fourthPeriodLetterLabel setText:@"-"];
            [fifthPeriodLetterLabel setText:@"-"];
            [sixthPeriodLetterLabel setText:@"-"];
            [firstPeriodDurationLabel setText:@"No Class Today"];
            [secondPeriodDurationLabel setText:@"No Class Today"];
            [thirdPeriodDurationLabel setText:@"No Class Today"];
            [fourthPeriodDurationLabel setText:@"No Class Today"];
            [fifthPeriodDurationLabel setText:@"No Class Today"];
            [sixthPeriodDurationLabel setText: @"No Class Today"];

            break;
        case 2: // Monday
            [firstPeriodLetterLabel setText:@"A"];
            [secondPeriodLetterLabel setText:@"B"];
            [thirdPeriodLetterLabel setText:@"C"];
            [fourthPeriodLetterLabel setText:@"D"];
            [fifthPeriodLetterLabel setText:@"E"];
            [sixthPeriodLetterLabel setText:@"F"];
            [firstPeriodDurationLabel setText:@"Starts at 8:00 AM, ends at 8:50"];
            [secondPeriodDurationLabel setText:@"Starts at 9:00, ends at 9:50"];
            [thirdPeriodDurationLabel setText:@"Starts at 10:30, ends at 11:20"];
            [fourthPeriodDurationLabel setText:@"Starts at 11:30, ends at 12:20 PM"];
            [fifthPeriodDurationLabel setText:@"Starts at 1:15, ends at 2:05"];
            [sixthPeriodDurationLabel setText: @"Starts at 2:15, ends at 3:05"];
            break;
        case 3: //Tuesday
            [firstPeriodLetterLabel setText:@"A"];
            [secondPeriodLetterLabel setText:@"D"];
            [thirdPeriodLetterLabel setText:@"E"];
            [fourthPeriodLetterLabel setText:@"C"];
            [fifthPeriodLetterLabel setText:@"-"];
            [sixthPeriodLetterLabel setText:@"-"];
            [firstPeriodDurationLabel setText:@"Starts at 8:35 AM, ends at 9:55"];
            [secondPeriodDurationLabel setText:@"Starts at 10:45, ends at 12:05"];
            [thirdPeriodDurationLabel setText:@"Starts at 1:05 PM, ends at 2:00"];
            [fourthPeriodDurationLabel setText:@"Starts at 2:10, ends at 3:05"];
            [fifthPeriodDurationLabel setText:@"No D-Period Today"];
            [sixthPeriodDurationLabel setText: @"No A-Period Today"];
            break;
        case 4: //Wednesday
            [firstPeriodLetterLabel setText:@"B"];
            [secondPeriodLetterLabel setText:@"C"];
            [thirdPeriodLetterLabel setText:@"F"];
            [fourthPeriodLetterLabel setText:@"-"];
            [fifthPeriodLetterLabel setText:@"-"];
            [sixthPeriodLetterLabel setText:@"-"];
            [firstPeriodDurationLabel setText:@"Starts at 9:30 AM, ends at 10:25"];
            [secondPeriodDurationLabel setText:@"Starts at 10:35, ends at 11:30"];
            [thirdPeriodDurationLabel setText:@"Starts at 11:40, ends at 12:35"];
            [fourthPeriodDurationLabel setText:@"No E-Period Today"];
            [fifthPeriodDurationLabel setText:@"No D-Period Today"];
            [sixthPeriodDurationLabel setText: @"No A-Period Today"];
            break;
        case 5: //Thursday
            [firstPeriodLetterLabel setText:@"B"];
            [secondPeriodLetterLabel setText:@"E"];
            [thirdPeriodLetterLabel setText:@"A"];
            [fourthPeriodLetterLabel setText:@"F"];
            [fifthPeriodLetterLabel setText:@"-"];
            [sixthPeriodLetterLabel setText:@"-"];
            [firstPeriodDurationLabel setText:@"Starts at 8:15 AM, ends at 9:55"];
            [secondPeriodDurationLabel setText:@"Starts at 10:45, ends at 12:25 PM"];
            [thirdPeriodDurationLabel setText:@"Starts at 1:05, ends at 2:00"];
            [fourthPeriodDurationLabel setText:@"Starts at 2:10, ends at 3:05"];
            [fifthPeriodDurationLabel setText:@"No D-Period Today"];
            [sixthPeriodDurationLabel setText: @"No C-Period Today"];

            break;
        case 6: //Friday
            [firstPeriodLetterLabel setText:@"C"];
            [secondPeriodLetterLabel setText:@"F"];
            [thirdPeriodLetterLabel setText:@"D"];
            [fourthPeriodLetterLabel setText:@"B"];
            [fifthPeriodLetterLabel setText:@"-"];
            [sixthPeriodLetterLabel setText:@"-"];
            [firstPeriodDurationLabel setText:@"Starts at 8:35 AM, ends at 9:55"];
            [secondPeriodDurationLabel setText:@"Starts at 10:45, ends at 12:05 PM"];
            [thirdPeriodDurationLabel setText:@"Starts at 1:05, ends at 2:00"];
            [fourthPeriodDurationLabel setText:@"Starts at 2:10, ends at 3:05"];
            [fifthPeriodDurationLabel setText:@"No A-Period Today"];
            [sixthPeriodDurationLabel setText: @"No E-Period Today"];
            break;
        case 7: //Saturday
            [firstPeriodLetterLabel setText:@"A"];
            [secondPeriodLetterLabel setText:@"D"];
            [thirdPeriodLetterLabel setText:@"E"];
            [fourthPeriodLetterLabel setText:@"-"];
            [fifthPeriodLetterLabel setText:@"-"];
            [sixthPeriodLetterLabel setText:@"-"];
            [firstPeriodDurationLabel setText:@"Starts at 8:30 AM, ends at 9:25"];
            [secondPeriodDurationLabel setText:@"Starts at 9:35, ends at 10:30"];
            [thirdPeriodDurationLabel setText:@"Starts at 10:40 , ends at 11:35"];
            [fourthPeriodDurationLabel setText:@"No B-Period Today"];
            [fifthPeriodDurationLabel setText:@"No C-Period Today"];
            [sixthPeriodDurationLabel setText: @"No F-Period Today"];
            break;
            
        default:
            break;
    }
    
    

//    NSDate * now = [NSDate date];
//    NSLog(@"Show me the time %@",now);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"cccc, MMMM, dd YYYY"];
    
    NSString *dateToday = [dateformatter stringFromDate:[NSDate date]];
    NSLog(@"dateToday is %@",dateToday);
    
    [currentDateLabel setText:dateToday];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

@end

