//
//  ViewController.m
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 7/31/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
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

-(UITableViewCell *)tableView:(UITableView*)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    if (cell == nil)
    
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    static int count = 0;
    
    cell.textLabel.text = [restaurantArray objectAtIndex:indexPath.row];
    
    count++;
    return cell;
    
}

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
-(UITableViewCellEditingStyle)tableView:(UITableView *) editingStyleForRowAtPath:(NSIndexPath *)indexPath
{
    return  UITableViewCellEditingStyleDelete;
}

-(void)tableView:(UITableView *)tView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
   if (editingStyle == UITableViewCellEditingStyleDelete)
   {
       [restaurantArray removeObjectAtIndex:indexPath.row];
       
       [tView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
       
   }
}

@end
