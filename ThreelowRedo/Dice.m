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

- (instancetype) init {
    self = [super init];
    if (self) {
        
        
    _randomValue = arc4random_uniform(6) + 1;

        [self randomizeValue];
      
        
    }
    return self;
}

- (void) randomizeValue {
   int randomValue = arc4random_uniform(6) + 1;
    if (randomValue == 1) {
    self.value = @"\u2680";
}
    else if (randomValue ==2) {
        self.value = @"\u2681";
    }
    
    else if (randomValue == 3) {
        self.value = @"\u2682";
    }
    
    else if (randomValue == 4) {
        self.value = @"\u2683";
    }
    else if (randomValue == 5) {
        self.value = @"\u2684";
    }
    
    else if (randomValue == 6) {
        self.value = @"\u2685";
    }
}



@end
