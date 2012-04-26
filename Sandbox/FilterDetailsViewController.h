//
//  FilterDetailsViewController.h
//  Sandbox
//
//  Created by Ran Tao on 4.25.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class FilterDetailsViewController;

@protocol FilterDetailsViewControllerDelegate <NSObject>

- (void)filterDetailsViewControllerDidCancel: (FilterDetailsViewController *)controller;
- (void)filterDetailsViewControllerDidSave:(FilterDetailsViewController *)controller;

@end




@interface FilterDetailsViewController : UITableViewController

@property (nonatomic, weak) id <FilterDetailsViewControllerDelegate> delegate;

-(IBAction)cancel:(id)sender;
-(IBAction)done:(id)sender;


@end
