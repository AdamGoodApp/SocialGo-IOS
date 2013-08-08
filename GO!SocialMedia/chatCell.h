//
//  chatCell.h
//  GO!SocialMedia
//
//  Created by Adam Rais on 10/12/2012.
//  Copyright (c) 2012 SocialGO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chatCell : UITableViewCell

{
    IBOutlet UILabel *userLabel;
    IBOutlet UITextView *textString;
    IBOutlet UILabel *timeLabel;
}
@property (nonatomic,retain) IBOutlet UILabel *userLabel;
@property (nonatomic,retain) IBOutlet UITextView *textString;
@property (nonatomic,retain) IBOutlet UILabel *timeLabel;

@end
