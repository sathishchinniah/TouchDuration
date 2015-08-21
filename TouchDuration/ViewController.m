//
//  ViewController.m
//  TouchDuration
//
//  Created by Sathish Chinniah on 18/08/15.
//  Copyright (c) 2015 sathish chinniah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lbDisplay, lbTime;
@synthesize startTime;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count] == 1) {
        self.startTime = [NSDate date];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count] == 1) {
        NSDate *now = [NSDate date];
        NSTimeInterval deltaT = [now timeIntervalSinceDate:self.startTime];
        if (deltaT > 0.5) {
            self.lbDisplay.text = @"Long Touch (> .5 seconds)";
        } else {
            self.lbDisplay.text = @"Short Touch (<= .5 seconds)";
        }
        self.lbTime.text = [NSString stringWithFormat:@"Exact time: %f seconds", deltaT];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.lbDisplay = nil;
    self.lbTime = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)reButton:(id)sender {
    lbTime.text = nil;
    lbDisplay.text = nil;
    
}
@end