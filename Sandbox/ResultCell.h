//
//  ResultCell.h
//  Sandbox
//
//  Created by Ran Tao on 4.25.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *companyLabel;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView;

@end
