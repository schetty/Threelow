//
//  GameController.m
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController


- (instancetype)init
{
    self = [super init];
    if (self) {
        Dice *d1 = [Dice new];
        Dice *d2 = [Dice new];
        Dice *d3 = [Dice new];
        Dice *d4 = [Dice new];
        Dice *d5 = [Dice new];
        
    
        
//        self.dice = [NSMutableArray arrayWithObjects:d1,d2,d3,d4,d5, nil];
        self.dice = [@[d1, d2, d3, d4, d5] mutableCopy];
 
        self.heldDice = [NSMutableSet set];
        [self printRolledDice];
    }
    return self;
}



- (void) rollDice{
    for (Dice *aDie in self.dice) {
        
        if (![_heldDice containsObject:aDie]) {
            
            [aDie randomizeValue];
            NSLog(@" %@", aDie.value);
        }
    }
    
}

- (void) printRolledDice {
    //        for (Dice *aDie in self.dice) {
    //
    //            if (![_heldDice containsObject:aDie]) {
    //                NSLog(@" %i", aDie.value);
    //            }
    //        }
}


- (void)holdDie:(NSInteger)index {
    
    Dice * aDie = self.dice[index];
    if ([self.heldDice containsObject: aDie]) {
        [self.heldDice removeObject: aDie];
    }
    else {
        [self.heldDice addObject:aDie];
        
    }
    
}

- (void)unholdAll {
    
    [_heldDice removeAllObjects];    
    
}

-(int)calculateScore {
    int score = 0;
    
    for (Dice *die in self.heldDice)
        if (die.randomValue != 3){
            score = score + die.randomValue;
        }
    return score;
    
}

@end
