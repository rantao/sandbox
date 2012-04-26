//
//  ResultsViewController.h
//  Sandbox
//
//  Created by Ran Tao on 4.25.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilterDetailsViewController.h"



@interface ResultsViewController : UITableViewController <FilterDetailsViewControllerDelegate>
@property (nonatomic,strong) NSMutableArray *results;

@end
