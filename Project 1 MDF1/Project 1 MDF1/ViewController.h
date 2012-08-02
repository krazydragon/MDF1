//
//  ViewController.h
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 7/31/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *tableView;
    NSMutableArray *restaurantArray;
    NSString *tempTitle;
}

-(IBAction)onClick:(id)sender;

@end