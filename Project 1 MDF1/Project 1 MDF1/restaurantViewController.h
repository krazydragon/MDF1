//
//  restaurantViewController.h
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 8/1/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface restaurantViewController : UIViewController
{
    IBOutlet UILabel *titleLabel;
    NSString *titleStr;
}


-(IBAction)onClick:(id)sender;

@property (strong, nonatomic) UILabel *titleLabel;
@property (nonatomic, retain) NSString *titleStr;
@end
