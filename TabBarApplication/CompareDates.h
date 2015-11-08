//
//  PeriodDailyBlockTimes.h
//  TabBarApplication
//
//  Created by IOSstudent on 11/8/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDate (PeriodDailyBlockTimes)

-(BOOL) isLaterThanOrEqualTo:(NSDate*)date;
-(BOOL) isEarlierThanOrEqualTo:(NSDate*)date;
-(BOOL) isLaterThan:(NSDate*)date;
-(BOOL) isEarlierThan:(NSDate*)date;

@end
