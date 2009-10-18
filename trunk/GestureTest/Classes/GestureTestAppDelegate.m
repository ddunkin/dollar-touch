//
//  GestureTestAppDelegate.m
//  GestureTest
//
//  Created by Dave Dunkin on 10/3/09.
//  Copyright Dave Dunkin 2009. All rights reserved.
//

#import "GestureTestAppDelegate.h"
#import "GestureTestViewController.h"

@implementation GestureTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application
{        
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc
{
    [viewController release];
    [window release];
    [super dealloc];
}


@end
