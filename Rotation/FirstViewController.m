//
//  FirstPortrait.m
//  Rotation
//
//  Created by Andrea Franceschini on 03/06/11.
//  Copyright 2011 S/E. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController

@synthesize landscapeView = _landscapeView;
@synthesize portraitView = _portraitView;

- (void)dealloc {
	[[NSNotificationCenter defaultCenter] removeObserver:self];

    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	_landscape = NO;

	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)viewDidUnload {
    [super viewDidUnload];
	
}

- (IBAction)goToSecond:(id)sender {
	SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"Second" bundle:nil];
	[self.navigationController pushViewController:secondViewController animated:YES];
	[secondViewController release];
}

#pragma mark - Orientation stuff

- (void)orientationChanged:(NSNotification *)notification {
	[self performSelector:@selector(goLandscape) withObject:nil afterDelay:0.1];
}

- (void)goLandscape {
	UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
	
	if((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight) && !_landscape) {
		self.view = _landscapeView;
		_landscape = YES;
	} else if((orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) && _landscape) {
		self.view = _portraitView;
		_landscape = NO;
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

@end
