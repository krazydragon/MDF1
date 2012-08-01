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
    restaurantArray = [[NSArray alloc] initWithObjects:@"Dagon's Bar & Grill",@"Anthony's Seafood",@"Odin's Fire",@"McDonalds’",@"Chuck E Chesse",@"Jack in the Box",@"Burger King",@"Old Country Buffet",@"Cheese head Bar",@"Bubas Grill",@"Papadaux",@"Old Chicago",@"The Rock",@"Ivars",@"PF Changs",@"Pizzeria and Cucina",@"Lucky Food",@"Tha Beach",@"Oceanside",@"Dave’s Grill", nil];
    
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
    return 20;
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

@end
