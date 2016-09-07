//
//  Dice.m
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (NSNumber*) randomizeValue {
   NSUInteger r = arc4random_uniform(6) + 1;
    NSNumber *myNum = @(r);
    NSLog(@"%@", myNum);
    return myNum;
}


@end
