//
//  ViewController.m
//  Overlay
//
//  Created by Tom von Schwerdtner on 2/16/13.
//  Copyright (c) 2013 Tom von Schwerdtner. All rights reserved.
//

#import "overlay.h"
#import "OverlayView.h"


#import "OverlayView1.h"

@interface overlay ()

@end
@implementation overlay

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewControllerButtonPressed:(id)sender
{
    OverlayView *overlayView = [[NSBundle mainBundle] loadNibNamed:@"OverlayView"owner:self options:nil][0];
    
    [UIView transitionWithView:self.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.view addSubview:overlayView];
                    }
                    completion:nil];
}

- (IBAction)navigationControllerButtonPressed:(id)sender
{
    OverlayView1 *overlayView1 = [[NSBundle mainBundle] loadNibNamed:@"OverlayView1"owner:self options:nil][0];
      [UIView transitionWithView:self.navigationController.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.navigationController.view addSubview:overlayView1];
                    }
                    completion:nil];
}

- (IBAction)tabBarControllerButtonPressed:(id)sender
{
    OverlayView *overlayView = [[NSBundle mainBundle] loadNibNamed:@"OverlayView"owner:self options:nil][0];
    
    [UIView transitionWithView:self.tabBarController.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.tabBarController.view addSubview:overlayView];
                    }
                    completion:nil];
}

@end
