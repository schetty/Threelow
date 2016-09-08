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
#import "ImputController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ImputController *imputController = [ImputController new];
        
        BOOL gameRunning = NO;
        
        //        NSString *diceSymbol1 = [NSString stringWithUTF8String:"⚀"];
        //        NSString *diceSymbol2 = [NSString stringWithUTF8String:"⚁"];
        //        NSString *diceSymbol3 = [NSString stringWithUTF8String:"⚂"];
        //        NSString *diceSymbol4 = [NSString stringWithUTF8String:"⚃"];
        //        NSString *diceSymbol5 = [NSString stringWithUTF8String:"⚄"];
        //        NSString *diceSymbol6 = [NSString stringWithUTF8String:"⚅"];
        
        
        
        NSString* start = [imputController inputForPrompt:@"Welcome to ThreeLow \n type 'roll' to begin"];
        
        if ([start isEqualToString:@"roll"]) {
            
            GameController *gameController = [GameController new];
            
            [gameController rollDice];
            [gameController printRolledDice];
            
            gameRunning = YES;
            
            do {
                
                //do something within this loop, while the game is running
                // the do soemthing is prompt for an action from the user, and then run the action
                
                //                NSLog(@"this is a new roll");
                //                [gameController rollDice];
                
                NSString* input = [imputController inputForPrompt:@"What is your next action?"];
                
                //if input = roll, roll dice
                if( [input isEqualToString:@"roll"]){
                    
                    
                    [gameController rollDice];
                    
                    NSLog(@"Machine detected user typed roll");
                }
                //
                
                //if input = hold, hold dice
                else if( [input isEqualToString:@"hold"]){
                    NSString* input = [imputController inputForPrompt:@"Type the index number of the dice to hold"];
                    
                    //Dice *designatedDie = [gameController.dice objectAtIndex:index];
                    
                    //convert input from NSString to NSinteger
                    
                    NSInteger designatedDie = [input integerValue];
                
                    [gameController holdDie:designatedDie];

                    
                    
                    NSLog(@"Machine detected user typed hold");
                }
                
                //see score
                
                else if ( [input isEqualToString:@"score"]){
                    [gameController calculateScore];
                    NSLog(@"Your score is %i", gameController.score);
                }
                
                //reset
                     else if( [input isEqualToString:@"unhold all"]){
                         [gameController unholdAll];
                         NSLog(@"all dice unheld");
                     }
                
                //quit game
                
                else if ([input isEqualToString:@"quit"]){
                    
                    
                    NSLog(@"Machine detected user typed quit");
                    gameRunning = NO;
                }
                
                
            } while (gameRunning);
            
            NSLog(@"Game Terminated");
            
            
        }
        
    }
    
    return 0;
}

