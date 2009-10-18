//
//  GestureTestAppDelegate.h
//  GestureTest
//
//  Created by Dave Dunkin on 10/3/09.
//  Copyright Dave Dunkin 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GestureTestViewController;

@interface GestureTestAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
    GestureTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GestureTestViewController *viewController;

@end

