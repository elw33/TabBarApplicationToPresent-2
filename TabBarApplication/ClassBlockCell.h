//
//  ClassBlockCell.h
//  TabBarApplication
//
//  Created by IOSstudent on 10/17/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassBlockCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel * classnamelabel;
@property (weak, nonatomic) IBOutlet UILabel *locationNameLabel;
@property (strong, nonatomic) IBOutlet UILabel * teachernamelabel;
@property (strong, nonatomic) IBOutlet UILabel * periodletterlabel;

@end
