//  ClassTable.m
//  TabBarApplication
//
//  Created by IOSstudent on 10/17/13.
//  Copyright (c) 2013 IOSstudent. All rights reserved.
//

#import "ClassTable.h"
#import "ClassBlockCell.h"
#import "ClassDetailViewController.h"

@interface ClassTable ()
@end
@implementation ClassTable
@synthesize periodletterlabel, classnamelabel, locationNamelabel, teachernamelabel;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    periodletterlabel = @[ @"A",
                           @"B",
                           @"C",
                           @"D",
                           @"E",
                           @"F"];
    
    classnamelabel = @[ @"No Class",
                        @"No class",
                        @"No class",
                        @"No class",
                        @"No class",];
    
    
    teachernamelabel = @[ @"No Teacher",
                          @"No Teacher",
                          @"No Teacher",
                          @"No Teacher",
                          @"No Teacher",
                          @"No Teacher"];
    
    locationNamelabel = @[@"No location",
                          @"No location",
                          @"No location",
                          @"No location",
                          @"No location",
                          @"No location",];
    
    
}

-(void) viewWillAppear: (BOOL) animated
{
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString: @"ShowClassDetails"])
    {
        ClassDetailViewController *detailViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        NSInteger row = [myIndexPath row];
        
        //detailViewController.periodletterlabel = @[periodletterlabel[row]];
        [detailViewController setPassedStr:periodletterlabel[row]];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return periodletterlabel.count;
    return teachernamelabel.count;
    return classnamelabel.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    NSUserDefaults *classDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableString *className = [[NSMutableString alloc]initWithString:@"ClassName_"];
    NSUserDefaults *teacherDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableString *teacherName = [[NSMutableString alloc]initWithString:@"TeacherName_"];
    NSUserDefaults *locationDefualts = [NSUserDefaults standardUserDefaults];
    NSMutableString *locationName = [[NSMutableString alloc]initWithString:@"LocationName_"];
    
    [className appendString:periodletterlabel[row]];
    [teacherName appendString:periodletterlabel[row]];
    [locationName appendString:periodletterlabel[row]];
    static NSString *CellIdentifier = @"ClassBlockCell";
    ClassBlockCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //int row = [indexPath row];
    cell.periodletterlabel.text = periodletterlabel[row];
    //cell.classnamelabel.text = classnamelabel[row];
    cell.classnamelabel.text = [classDefaults objectForKey:className];
    cell.locationNameLabel.text = [locationDefualts objectForKey:locationName];
    cell.teachernamelabel.text = [teacherDefaults objectForKey:teacherName];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView: (UITableView*)tableView
  willDisplayCell: (UITableViewCell*)cell
forRowAtIndexPath: (NSIndexPath*)indexPath
{
    cell.backgroundColor = indexPath.row % 5
    ? [UIColor colorWithRed: 1.0 green: 0.0 blue: 0.0 alpha: 0.0]
    : [UIColor whiteColor];
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
}
@end
