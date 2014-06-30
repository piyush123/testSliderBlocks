//
//  MainViewController.h
//  testSliderNavigation
//
//  Created by piyush shah on 6/29/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

- (IBAction)onPan:(UIPanGestureRecognizer *)sender;

-(void) addViewController:(UIViewController *)vc;

@end
