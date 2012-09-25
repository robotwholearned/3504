//
//  Calculator.m
//  PushButtonCalculator
//
//  Created by Cassie on 2012-09-07.
//  Copyright (c) 2012 Cassie. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
@synthesize operator;

-(id)init{
    self = [super init];
    total= 0;
    operator = 3;
    return self;
}
-(double)getValue{
    return total;
}
-(void)nextVal:(double)nextNumber withOperator:(int)nextOp{
    NSLog(@"Operator: %i", operator);
    NSLog(@"nextOp: %i", nextOp);
    switch (operator) {
        case 0:
            //division
            total = total / nextNumber;
            break;
        case 1:
            //multiply
            total = total * nextNumber;
            break;
        case 2:
            //subtraction
            total = total - nextNumber;
            NSLog(@"minus bitch!");
            break;
        case 3:
            //addition
            total = total + nextNumber;
            NSLog(@"addition bitch!");
            break;
        case 5:
            //evaluate
            total = nextNumber;
            break;
    }
    if (nextOp == 4) {
        //clear
        total = 0;
        nextOp = 3;
    }
    NSLog(@"Latest total: %f", total);
}
@end
