//
//  RotationAppDelegate.m
//  Rotation
//
//  Created by Andrea Franceschini on 03/06/11.
//  Copyright 2011 S/E. All rights reserved.
//

#import "RotationAppDelegate.h"

@implementation RotationAppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;
@synthesize navigationControllerDelegate = _navigationControllerDelegate;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window.rootViewController = self.navigationController;
	[self.window makeKeyAndVisible];
	
	[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	[[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	[[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

- (void)dealloc {
	[_window release];
	[_navigationController release];
    [super dealloc];
}

@end
