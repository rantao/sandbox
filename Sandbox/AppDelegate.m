//
//  AppDelegate.m
//  Sandbox
//
//  Created by Ran Tao on 4.25.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Result.h"
#import "ResultsViewController.h"

@implementation AppDelegate {
    NSMutableArray *results;
}

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    results = [NSMutableArray arrayWithCapacity:20];
	Result *result = [[Result alloc] init];
	result.name = @"Bill Evans";
	result.company = @"Axel Rose";
	result.rating = 4;
	[results addObject:result];
	result = [[Result alloc] init];
	result.name = @"Oscar Peterson";
	result.company = @"Spin the Bottle";
	result.rating = 5;
	[results addObject:result];
	result = [[Result alloc] init];
	result.name = @"Dave Brubeck";
	result.company = @"Texas Hold’em Poker";
	result.rating = 2;
	[results addObject:result];
	UITabBarController *tabBarController = 
    (UITabBarController *)self.window.rootViewController;
	UINavigationController *navigationController = 
    [[tabBarController viewControllers] objectAtIndex:0];
	ResultsViewController *ResultsViewController = 
    [[navigationController viewControllers] objectAtIndex:0];
	ResultsViewController.results = results;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
