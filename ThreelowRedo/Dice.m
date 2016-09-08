//
//  Dice.m
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Dice.h"
//#import "GameController.h"

@implementation Dice

//- (instancetype)initWithValue:(int)value andSymbol:(NSString *)symbol
//{
//    self = [super init];
//    if (self) {
//        _value = arc4random_uniform(6) + 1;
//    }
//    return self;
//}

- ( instancetype) init {
    self = [super init];
    if (self) {
        _value = arc4random_uniform(6) + 1;
        
    }
    return self;
}

- (void) randomizeValue {
   self.value = arc4random_uniform(6) + 1;

}



@end
