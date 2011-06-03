//
//  FirstPortrait.h
//  Rotation
//
//  Created by Andrea Franceschini on 03/06/11.
//  Copyright 2011 S/E. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {
    BOOL _landscape;
}

- (IBAction)goToSecond:(id)sender;

@property (nonatomic, retain) IBOutlet UIView *landscapeView;
@property (nonatomic, retain) IBOutlet UIView *portraitView;

@end
