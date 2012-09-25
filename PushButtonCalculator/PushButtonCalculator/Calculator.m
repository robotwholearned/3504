//
//  Calculator.m
//  PushButtonCalculator
//
//  Created by Cassie on 2012-09-07.
//  Copyright (c) 2012 Cassie. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(id)init{
    self = [super init];
    total= 0;
    operator = 3;
    return self;
}

-(double)getValue{
    return total;
}
-(void)nextVal:(double)i withOperator:(int)nextOp{
    switch (operator) {
        case 0:
            //division
            total = total / i;
            break;
        case 1:
            //multiply
            total = total * i;
            break;
        case 2:
            //subtraction
            total = total - i;
            NSLog(@"minus bitch!");
            break;
        case 3:
            //addition
            total = total + i;
            NSLog(@"addition bitch!");
            break;
        case 5:
            //evaluate
            total = i;
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
