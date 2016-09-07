//
//  main.m
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *gameController = [GameController new];
        Dice *d1 = [Dice new];
        Dice *d2 = [Dice new];
        Dice *d3 = [Dice new];
        Dice *d4 = [Dice new];
        Dice *d5 = [Dice new];
        
        NSNumber *dValue1 = [d1 randomizeValue];
        NSNumber *dValue2 = [d2 randomizeValue];
        NSNumber *dValue3 = [d3 randomizeValue];
        NSNumber *dValue4 = [d4 randomizeValue];
        NSNumber *dValue5 = [d5 randomizeValue];



//
//        NSString *diceSymbol1 = [NSString stringWithUTF8String:"⚀"];
//        NSString *diceSymbol2 = [NSString stringWithUTF8String:"⚁"];
//        NSString *diceSymbol3 = [NSString stringWithUTF8String:"⚂"];
//        NSString *diceSymbol4 = [NSString stringWithUTF8String:"⚃"];
//        NSString *diceSymbol5 = [NSString stringWithUTF8String:"⚄"];
//        NSString *diceSymbol6 = [NSString stringWithUTF8String:"⚅"];
        
        NSArray *diceArray = [[NSArray alloc] initWithObjects:d1, d2, d3, d4, d5, nil];
        
        NSString* start = [gameController inputForPrompt:@"Welcome to ThreeLow \n type 'roll' to begin"];
        
        if ([start isEqualToString:@"roll"]) {
            
            do {
                
                
            } while ();
            
        }
        
        
        for (NSString *symbol in diceArray) {
            
            
        }
        
        else {
            NSLog(@"goodbye");
            exit (0);
        }
    }
    
    return 0;
}

