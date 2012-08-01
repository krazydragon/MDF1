//
//  customCell.m
//  Project 1 MDF1
//
//  Created by Ronaldo Barnes on 8/1/12.
//  Copyright (c) 2012 Ronaldo Barnes. All rights reserved.
//

#import "customCell.h"

@implementation customCell
@synthesize mainLabel;
@synthesize labelNum;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
