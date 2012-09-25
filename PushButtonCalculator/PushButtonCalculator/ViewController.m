//
//  ViewController.m
//  PushButtonCalculator
//
//  Created by Cassie on 2012-09-07.
//  Copyright (c) 2012 Cassie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	calc = [[Calculator alloc]init];
    dot=0.0;
}

- (void)viewDidUnload
{
    [LCDScreen release];
    LCDScreen = nil;
    [self setLCDScreen:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    [calc release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
@synthesize LCDScreen;

- (IBAction)clear:(id)sender {
    dot=0.0;
    tempVal=0;
    [calc nextVal:0 withOperator:4];
    [LCDScreen setText:[NSString stringWithFormat:@"%.5f", [calc getValue]]];
}

- (IBAction)divide:(id)sender {
}

- (IBAction)multiply:(id)sender {
}

- (IBAction)subtract:(id)sender {
    dot=0.0;
    [calc nextVal:tempVal withOperator:2];
    [LCDScreen setText:[NSString stringWithFormat:@"%.5f", [calc getValue]]];
    tempVal = 0;
}

- (IBAction)add:(id)sender {
    dot=0.0;
    [calc nextVal:tempVal withOperator:3];
    [LCDScreen setText:[NSString stringWithFormat:@"%.5f", [calc getValue]]];
    tempVal = 0;
}

- (IBAction)equals:(id)sender {
    dot = 0.0;
    [calc nextVal:tempVal withOperator:5];
    [LCDScreen setText:[NSString stringWithFormat:@"%.5f", [calc getValue]]];
    
}

- (IBAction)number:(id)sender {
    NSString *buttonValue = ((UIButton*)sender).titleLabel.text;
    if ([buttonValue isEqualToString:@"."] && dot==0) {
        dot=10;
    }else{
        int value = [buttonValue intValue];
        if (dot) {
            tempVal+=(float)value/(float)dot;
            dot*=10;
        }
    else{
        tempVal*=10;
        tempVal+=value;
    }
    }
[LCDScreen setText:[NSString stringWithFormat:@"%10.5f",tempVal]];
    
}
@end
