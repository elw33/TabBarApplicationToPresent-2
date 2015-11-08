//
//  PeriodDailyBlockTimes.m
//  TabBarApplication
//
//  Created by IOSstudent on 11/8/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import "CompareDates.h"

@implementation NSDate (PeriodDailyBlockTimes)

-(BOOL) isLaterThanOrEqualTo:(NSDate *)date{
    return!([self compare: date] == NSOrderedAscending);
}
-(BOOL) isEarlierThanOrEqualTo:(NSDate *)date{
    return!([self compare: date] == NSOrderedAscending);
}
-(BOOL) isLaterThan:(NSDate *)date{
    return!([self compare: date] == NSOrderedAscending);
}
-(BOOL) isEarlierThan:(NSDate *)date{
    return!([self compare: date] == NSOrderedAscending);
}

@end

