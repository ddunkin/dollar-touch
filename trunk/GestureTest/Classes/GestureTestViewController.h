//
//  GestureTestViewController.h
//  GestureTest
//
//  Created by Dave Dunkin on 10/3/09.
//  Copyright Dave Dunkin 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTRecognizer.h"

@interface GestureTestViewController : UIViewController
{
	NSMutableArray *points;
	DTRecognizer *recognizer;
	IBOutlet id resultLabel;
}

@end

