//
//  ViewController.m
//  orientation
//
//  Created by comonitos on 2/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#define degreesToRadian(x) (M_PI * (x) / 180.0)

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    //hidding status bar
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    //rotating
    [self rotateInterfaceToOrientation:UIDeviceOrientationLandscapeLeft];

}
-(void)rotateInterfaceToOrientation:(UIDeviceOrientation)orientation
{
    rotated = YES;

    [[UIDevice currentDevice] setOrientation:orientation];
    
    //additional setup
    switch (orientation) {
        case UIDeviceOrientationPortrait:
        {
            break;
        }            
        case UIDeviceOrientationLandscapeLeft:
        {
            break;
        }            
        case UIDeviceOrientationLandscapeRight:
        {
            break;
        }            
        case UIDeviceOrientationPortraitUpsideDown:
        {
            break;
        }            
        default:
            break;
    }
    
    rotated = NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return rotated;
}

@end
