//
//  ResultsViewController.m
//  Sandbox
//
//  Created by Ran Tao on 4.25.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ResultsViewController.h"
#import "Result.h"
#import "ResultCell.h"


@implementation ResultsViewController
@synthesize results;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.results count];
}

- (UIImage *)imageForRating:(int)rating
{
    switch (rating)
    {
    case 1: return [UIImage imageNamed:@"1starSmall.png"];
    case 2: return [UIImage imageNamed:@"2starsSmall.png"];
    case 3: return [UIImage imageNamed:@"3starsSmall.png"];
    case 4: return [UIImage imageNamed:@"4starsSmall.png"];
    case 5: return [UIImage imageNamed:@"5starsSmall.png"];

    }
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ResultCell *cell = (ResultCell *) [tableView dequeueReusableCellWithIdentifier:@"ResultCell"];
	Result *result = [self.results objectAtIndex:indexPath.row];
	cell.nameLabel.text = result.name;
	cell.companyLabel.text = result.company;
	cell.ratingImageView.image = [self imageForRating:result.rating];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //for removing from results list
    [self.results removeObjectAtIndex:indexPath.row];

    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }  
    
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

// tell the viewcontroll that is it now its delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Filters"]) {
        UINavigationController *navigationController = segue.destinationViewController;
        FilterDetailsViewController *filterDetailsViewController = [[navigationController viewControllers] objectAtIndex:0];
        filterDetailsViewController.delegate = self;
    }
}


#pragma mark - FilterDetailsViewControllerDelegate

- (void)filterDetailsViewControllerDidCancel:(FilterDetailsViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)filterDetailsViewControllerDidSave:(FilterDetailsViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
