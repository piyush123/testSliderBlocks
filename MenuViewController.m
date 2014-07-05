//
//  MenuViewController.m
//  testSliderNavigation
//
//  Created by piyush shah on 6/29/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//

#import "MenuViewController.h"


// Convenience typedef for button callback block.
typedef void(^ButtonBlock)(UIControl *);

@interface MenuViewController ()

@property (nonatomic, strong) UIButton *myButton;
@property (nonatomic, strong) UIButton *button;


@end


@implementation MenuViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:button];
    
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [button sizeToFit];
    
    button.center = CGPointMake(100, 250);
    

    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonPressed:(UIControl *)button {
    if (_buttonCallback) {
        NSLog(@"in callback");
        _buttonCallback(button);
    } else {
        NSLog(@"Button pressed with no callback block, %@.", _button);
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

    - (IBAction)myButton:(id)sender {
    }
@end
