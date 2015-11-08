//
//  Today's Events.m
//  WyckoffAaronLatestVerisonProject
//
//  Created by IOSstudent on 11/18/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import "Today's Events.h"

@interface Today_s_Events ()

@end

@implementation Today_s_Events

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
	NSURL *houseletterURL = [NSURL URLWithString:@"http://www.lawrenceville.org/campus-life/houseletter/index.aspx"];
    
    NSURLRequest * userRequest = [NSURLRequest requestWithURL:houseletterURL];
    
    [houseletterWebView loadRequest:userRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
