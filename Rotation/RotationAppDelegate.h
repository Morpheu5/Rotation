//
//  RotationAppDelegate.h
//  Rotation
//
//  Created by Andrea Franceschini on 03/06/11.
//  Copyright 2011 S/E. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigationControllerDelegate.h"

@interface RotationAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@property (nonatomic, retain) IBOutlet NavigationControllerDelegate *navigationControllerDelegate;

@end
