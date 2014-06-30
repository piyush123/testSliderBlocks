//
//  MainViewController.m
//  testSliderNavigation
//
//  Created by piyush shah on 6/29/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//

#import "MainViewController.h"

#define kSlideMargin 66

@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UIView *contentView;

@property (nonatomic, strong) NSMutableArray  *viewControllers;

@property (nonatomic, strong) UIViewController *tweet_vc;
@property (nonatomic, strong) UIViewController *menu_vc;


@end


@implementation MainViewController



- (IBAction)onPan:(UIPanGestureRecognizer *)sender {
    
    NSLog(@"got pan");
    
   
    
    
    UIView *childView = self.tweet_vc.view;
    
    
    
    CGPoint velocity = [sender velocityInView:self.view];
    
    
    
    CGPoint translate = [sender translationInView:self.view];
    
    CGRect newFrame = childView.frame;
    
    newFrame.origin.x += translate.x;
    
    newFrame.origin.y += translate.y;
    
    
    
    //self.touched.frame = newFrame;
    
    if (sender.state == UIGestureRecognizerStateBegan ) {
        
        CGPoint transition = [sender locationInView:self.view];
        
        transition.y = 0;
        
        childView.frame = CGRectMake(transition.x, 0, childView.frame.size.width, childView.frame.size.height);
        
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        
        
        
        
        
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        
        
        
        
        
        //childView.frame = CGRectMake(childView.frame.size.width-kSlideMargin, 0, childView.frame.size.width, childView.frame.size.height);
        
        if (velocity.x >= 20) {
            
            
            
            [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.9 initialSpringVelocity:5 options:0 animations:^{
                
                if (velocity.x >= 20) {
                    
                    //view.center = leftPoint;
                    
                    childView.frame = CGRectMake(childView.frame.size.width-kSlideMargin, 0, childView.frame.size.width, childView.frame.size.height);
                    
                    
                    
                }
                
            } completion:nil];
            
        } else {
            
            NSLog(@"velocity %f", velocity.x);
            
            [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.9 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
                
                //if (velocity.x >= -10) {
                
                childView.frame = CGRectMake(0, 0, childView.frame.size.width, childView.frame.size.height);
                
                //}
                
            } completion:nil];
            
        }
        
    }
    
}

- (void) addViewController:(UIViewController *)vc
{
    [self.viewControllers addObject:vc];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.viewControllers = [[NSMutableArray alloc]init];
        

        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.menu_vc = self.viewControllers[0];
    self.tweet_vc = self.viewControllers[1];
    
    UIView *firstview = self.menu_vc.view;
    UIView *secondview = self.tweet_vc.view;
    
    [self.contentView addSubview:firstview];
    [self.contentView addSubview:secondview];
    
    
    
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

@end
