//
//  GestureTestViewController.m
//  GestureTest
//
//  Created by Dave Dunkin on 10/3/09.
//  Copyright Dave Dunkin 2009. All rights reserved.
//

#import "GestureTestViewController.h"

NSArray *NSArrayFromValueArray(CGPoint *points, int length)
{
	NSMutableArray *array = [NSMutableArray arrayWithCapacity:length];
	for (int i = 0; i < length; i++)
		[array addObject:[NSValue valueWithCGPoint:points[i]]];
	return array;
}

@implementation GestureTestViewController

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
	{
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
	CGPoint trianglePoints[] = { CGPointMake(137,139),CGPointMake(135,141),CGPointMake(133,144),CGPointMake(132,146),CGPointMake(130,149),CGPointMake(128,151),CGPointMake(126,155),CGPointMake(123,160),CGPointMake(120,166),CGPointMake(116,171),CGPointMake(112,177),CGPointMake(107,183),CGPointMake(102,188),CGPointMake(100,191),CGPointMake(95,195),CGPointMake(90,199),CGPointMake(86,203),CGPointMake(82,206),CGPointMake(80,209),CGPointMake(75,213),CGPointMake(73,213),CGPointMake(70,216),CGPointMake(67,219),CGPointMake(64,221),CGPointMake(61,223),CGPointMake(60,225),CGPointMake(62,226),CGPointMake(65,225),CGPointMake(67,226),CGPointMake(74,226),CGPointMake(77,227),CGPointMake(85,229),CGPointMake(91,230),CGPointMake(99,231),CGPointMake(108,232),CGPointMake(116,233),CGPointMake(125,233),CGPointMake(134,234),CGPointMake(145,233),CGPointMake(153,232),CGPointMake(160,233),CGPointMake(170,234),CGPointMake(177,235),CGPointMake(179,236),CGPointMake(186,237),CGPointMake(193,238),CGPointMake(198,239),CGPointMake(200,237),CGPointMake(202,239),CGPointMake(204,238),CGPointMake(206,234),CGPointMake(205,230),CGPointMake(202,222),CGPointMake(197,216),CGPointMake(192,207),CGPointMake(186,198),CGPointMake(179,189),CGPointMake(174,183),CGPointMake(170,178),CGPointMake(164,171),CGPointMake(161,168),CGPointMake(154,160),CGPointMake(148,155),CGPointMake(143,150),CGPointMake(138,148),CGPointMake(136,148) };
	CGPoint circlePoints[] = { CGPointMake(127,141),CGPointMake(124,140),CGPointMake(120,139),CGPointMake(118,139),CGPointMake(116,139),CGPointMake(111,140),CGPointMake(109,141),CGPointMake(104,144),CGPointMake(100,147),CGPointMake(96,152),CGPointMake(93,157),CGPointMake(90,163),CGPointMake(87,169),CGPointMake(85,175),CGPointMake(83,181),CGPointMake(82,190),CGPointMake(82,195),CGPointMake(83,200),CGPointMake(84,205),CGPointMake(88,213),CGPointMake(91,216),CGPointMake(96,219),CGPointMake(103,222),CGPointMake(108,224),CGPointMake(111,224),CGPointMake(120,224),CGPointMake(133,223),CGPointMake(142,222),CGPointMake(152,218),CGPointMake(160,214),CGPointMake(167,210),CGPointMake(173,204),CGPointMake(178,198),CGPointMake(179,196),CGPointMake(182,188),CGPointMake(182,177),CGPointMake(178,167),CGPointMake(170,150),CGPointMake(163,138),CGPointMake(152,130),CGPointMake(143,129),CGPointMake(140,131),CGPointMake(129,136),CGPointMake(126,139) };
	CGPoint checkPoints[] = { CGPointMake(91,185),CGPointMake(93,185),CGPointMake(95,185),CGPointMake(97,185),CGPointMake(100,188),CGPointMake(102,189),CGPointMake(104,190),CGPointMake(106,193),CGPointMake(108,195),CGPointMake(110,198),CGPointMake(112,201),CGPointMake(114,204),CGPointMake(115,207),CGPointMake(117,210),CGPointMake(118,212),CGPointMake(120,214),CGPointMake(121,217),CGPointMake(122,219),CGPointMake(123,222),CGPointMake(124,224),CGPointMake(126,226),CGPointMake(127,229),CGPointMake(129,231),CGPointMake(130,233),CGPointMake(129,231),CGPointMake(129,228),CGPointMake(129,226),CGPointMake(129,224),CGPointMake(129,221),CGPointMake(129,218),CGPointMake(129,212),CGPointMake(129,208),CGPointMake(130,198),CGPointMake(132,189),CGPointMake(134,182),CGPointMake(137,173),CGPointMake(143,164),CGPointMake(147,157),CGPointMake(151,151),CGPointMake(155,144),CGPointMake(161,137),CGPointMake(165,131),CGPointMake(171,122),CGPointMake(174,118),CGPointMake(176,114),CGPointMake(177,112),CGPointMake(177,114),CGPointMake(175,116),CGPointMake(173,118) };
	CGPoint zigZagPoints[] = { CGPointMake(307,216),CGPointMake(333,186),CGPointMake(356,215),CGPointMake(375,186),CGPointMake(399,216),CGPointMake(418,186) };
	CGPoint pigtailPoints[] = { CGPointMake(81,219),CGPointMake(84,218),CGPointMake(86,220),CGPointMake(88,220),CGPointMake(90,220),CGPointMake(92,219),CGPointMake(95,220),CGPointMake(97,219),CGPointMake(99,220),CGPointMake(102,218),CGPointMake(105,217),CGPointMake(107,216),CGPointMake(110,216),CGPointMake(113,214),CGPointMake(116,212),CGPointMake(118,210),CGPointMake(121,208),CGPointMake(124,205),CGPointMake(126,202),CGPointMake(129,199),CGPointMake(132,196),CGPointMake(136,191),CGPointMake(139,187),CGPointMake(142,182),CGPointMake(144,179),CGPointMake(146,174),CGPointMake(148,170),CGPointMake(149,168),CGPointMake(151,162),CGPointMake(152,160),CGPointMake(152,157),CGPointMake(152,155),CGPointMake(152,151),CGPointMake(152,149),CGPointMake(152,146),CGPointMake(149,142),CGPointMake(148,139),CGPointMake(145,137),CGPointMake(141,135),CGPointMake(139,135),CGPointMake(134,136),CGPointMake(130,140),CGPointMake(128,142),CGPointMake(126,145),CGPointMake(122,150),CGPointMake(119,158),CGPointMake(117,163),CGPointMake(115,170),CGPointMake(114,175),CGPointMake(117,184),CGPointMake(120,190),CGPointMake(125,199),CGPointMake(129,203),CGPointMake(133,208),CGPointMake(138,213),CGPointMake(145,215),CGPointMake(155,218),CGPointMake(164,219),CGPointMake(166,219),CGPointMake(177,219),CGPointMake(182,218),CGPointMake(192,216),CGPointMake(196,213),CGPointMake(199,212),CGPointMake(201,211) };
	NSArray *templates = [NSArray arrayWithObjects:
						  [[[DTTemplate alloc] initWithName:@"triangle" points:NSArrayFromValueArray(trianglePoints, sizeof(trianglePoints)/sizeof(CGPoint)) squareSize:250] autorelease],
						  [[[DTTemplate alloc] initWithName:@"circle" points:NSArrayFromValueArray(circlePoints, sizeof(circlePoints)/sizeof(CGPoint)) squareSize:250] autorelease],
						  [[[DTTemplate alloc] initWithName:@"check" points:NSArrayFromValueArray(checkPoints, sizeof(checkPoints)/sizeof(CGPoint)) squareSize:250] autorelease],
						  [[[DTTemplate alloc] initWithName:@"zig-zag" points:NSArrayFromValueArray(zigZagPoints, sizeof(zigZagPoints)/sizeof(CGPoint)) squareSize:250] autorelease],
						  [[[DTTemplate alloc] initWithName:@"pigtail" points:NSArrayFromValueArray(pigtailPoints, sizeof(pigtailPoints)/sizeof(CGPoint)) squareSize:250] autorelease],
						  nil];
	recognizer = [[DTRecognizer alloc] initWithSquareSize:250 templates:templates];

    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	points = [[NSMutableArray alloc] init];
	// Enumerate through all the touch objects.
	for (UITouch *touch in touches)
	{
		CGPoint point = [touch locationInView:touch.view];
		NSLog(@"touchesBegan %f, %f", point.x, point.y);
		[points addObject:[NSValue valueWithCGPoint:point]];
	}	
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{  
	for (UITouch *touch in touches)
	{
		CGPoint point = [touch locationInView:touch.view];
		NSLog(@"touchesMoved %f, %f", point.x, point.y);
		[points addObject:[NSValue valueWithCGPoint:point]];
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{ 
	NSLog(@"touchesEnded %d", [touches count]);
	
	DTResult *result = [recognizer recognize:points];
	NSLog(@"Recognized %@ (%f)", result.name, result.score);
	[resultLabel setText:[NSString stringWithFormat:@"%@ (score: %f)", result.name, result.score]];
	 
	[points release];
	points = nil;
}


- (void)didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	[recognizer release];
}

/*
- (void)dealloc
{
    [super dealloc];
}
*/

@end
