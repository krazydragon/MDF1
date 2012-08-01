//
//  customCell.h
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 8/1/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell
{
    IBOutlet UILabel *mainLabel;
    IBOutlet UILabel *labelNum;
    IBOutlet UITableViewCell *customCell;
}


@property (nonatomic, retain) UILabel *mainLabel;
@property (nonatomic, retain) UILabel *labelNum;

@end
