//
//  ViewController.m
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 7/31/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"
#import "restaurantViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //List of restaurants
    restaurantArray = [[NSMutableArray alloc] initWithObjects:@"Dagon's Bar & Grill",@"Anthony's Seafood",@"Odin's Fire",@"McDonalds’",@"Chuck E Chesse",@"Jack in the Box",@"Burger King",@"Old Country Buffet",@"Cheese head Bar",@"Bubas Grill",@"Papadaux",@"Old Chicago",@"The Rock",@"Ivars",@"PF Changs",@"Pizzeria and Cucina",@"Lucky Food",@"Tha Beach",@"Oceanside",@"Dave’s Grill", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [restaurantArray count];
}

//Create each cell of the table view from custom cell
-(UITableViewCell *)tableView:(UITableView*)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    customCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    if (cell == nil)
    {
        
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        for (UIView *view in views)
        {
            if ([view isKindOfClass:[customCell class]])
            {
                cell = (customCell*)view;
                cell.mainLabel.text = [restaurantArray objectAtIndex:indexPath.row];
                int tempNum = indexPath.row + 1;
                cell.labelNum.text = [[NSString alloc ]initWithFormat: @"%d",tempNum];
                
                
                
            }
        }
        
    }
    
    
    
    
    return cell;
    
}
//Allow user to enable and disable edit mode
-(IBAction)onClick:(id)sender
{
    UIButton *eventButton = (UIButton*)sender;
    if (eventButton != nil)
    {
        
        if (eventButton.tag == 0)
        {
            [tableView setEditing:TRUE];
            eventButton.tag = 1;
        }
        else
        {
            [tableView setEditing:FALSE];
            eventButton.tag = 0;
        }
    }
}
//show delete buttons
-(UITableViewCellEditingStyle)tableView:(UITableView *) editingStyleForRowAtPath:(NSIndexPath *)indexPath
{
    return  UITableViewCellEditingStyleDelete;
}


//delete function
-(void)tableView:(UITableView *)tView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [restaurantArray removeObjectAtIndex:indexPath.row];
        
        [tView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
        
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    int tempNum = indexPath.row + 1;
    tempTitle = [[NSString alloc]initWithFormat:@"%@ #%d",[restaurantArray objectAtIndex:indexPath.row], tempNum];
    [self performSegueWithIdentifier: @"NextView" sender: self];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    restaurantViewController *event = (restaurantViewController *)[segue destinationViewController];
    if (event != nil)
    {
        event.titleStr = tempTitle;
    }
}

@end
