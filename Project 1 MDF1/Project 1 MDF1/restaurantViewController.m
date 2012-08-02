//
//  restaurantViewController.m
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 8/1/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import "restaurantViewController.h"

@interface restaurantViewController ()

@end

@implementation restaurantViewController

@synthesize titleLabel;
@synthesize titleStr;

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
    //Set title
    titleLabel.text = titleStr;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//Go back to main page
-(IBAction)onClick:(id)sender
{
    [self dismissModalViewControllerAnimated:TRUE];
}

@end
