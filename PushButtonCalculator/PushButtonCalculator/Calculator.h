//
//  Calculator.h
//  PushButtonCalculator
//
//  Created by Cassie on 2012-09-07.
//  Copyright (c) 2012 Cassie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject{
    double total;
    int operator;
}
@property int operator;
-(double)getValue;
-(void)nextVal:(double)nextNumber withOperator:(int) nextOp;

@end
