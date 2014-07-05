//
//  MenuViewController.h
//  testSliderNavigation
//
//  Created by piyush shah on 6/29/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonBlock)(UIControl *);
@interface MenuViewController : UIViewController

@property (nonatomic,strong) ButtonBlock buttonCallback;

@end
