//
//  main.m
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        
        NSString *diceSymbol1 = [NSString stringWithUTF8String:"⚀"];
        NSString *diceSymbol2 = [NSString stringWithUTF8String:"⚁"];
        NSString *diceSymbol3 = [NSString stringWithUTF8String:"⚂"];
        NSString *diceSymbol4 = [NSString stringWithUTF8String:"⚃"];
        NSString *diceSymbol5 = [NSString stringWithUTF8String:"⚄"];
        NSString *diceSymbol6 = [NSString stringWithUTF8String:"⚅"];

        NSArray *diceArray = [[NSArray alloc] initWithObjects:diceSymbol1, diceSymbol2, diceSymbol3, diceSymbol4, diceSymbol5, diceSymbol6, nil];
        for (NSString *symbol in diceArray) {
            
        }
        
        
    }
    return 0;
}
