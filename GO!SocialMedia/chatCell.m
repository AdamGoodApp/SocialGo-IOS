//
//  chatCell.m
//  GO!SocialMedia
//
//  Created by Adam Rais on 10/12/2012.
//  Copyright (c) 2012 SocialGO. All rights reserved.
//

#import "chatCell.h"

@implementation chatCell

@synthesize userLabel, timeLabel, textString;

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
