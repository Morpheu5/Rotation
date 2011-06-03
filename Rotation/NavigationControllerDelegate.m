//
//  NavigationController.m
//  Rotation
//
//  Created by Andrea Franceschini on 03/06/11.
//  Copyright 2011 S/E. All rights reserved.
//

#import "NavigationControllerDelegate.h"


@implementation NavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated  {
	NSLog(@"NC willShowViewController %@", [viewController class]);
    [viewController performSelector:@selector(goLandscape) withObject:nil afterDelay:0.1];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
	NSLog(@"NC willShowViewController %@", [viewController class]);
    [viewController performSelector:@selector(goLandscape) withObject:nil afterDelay:0.1];
}

@end
