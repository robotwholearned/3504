//
//  ViewController.h
//  PushButtonCalculator
//
//  Created by Cassie on 2012-09-07.
//  Copyright (c) 2012 Cassie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController{
    Calculator *calc;
    IBOutlet UILabel *LCDScreen;
    double dot;
    double tempVal;
}
- (IBAction)clear:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)equals:(id)sender;
- (IBAction)number:(id)sender;

@property (retain, nonatomic) IBOutlet UILabel *LCDScreen;

@end
