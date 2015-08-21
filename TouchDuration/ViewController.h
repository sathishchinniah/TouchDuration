//
//  ViewController.h
//  TouchDuration
//
//  Created by Sathish Chinniah on 18/08/15.
//  Copyright (c) 2015 sathish chinniah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lbDisplay;

@property (strong, nonatomic) IBOutlet UILabel *lbTime;
@property (nonatomic, strong) NSDate *startTime;

- (IBAction)reButton:(id)sender;

@end

