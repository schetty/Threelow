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

//return type | method name  | parameter type | parameter name

- (NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars [255];
    
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *str = [NSString stringWithFormat:@"%s", inputChars];
    str = [str stringByReplacingOccurrencesOfString:(@"\n") withString:(@"")];
    
    return str;
}

- (NSNumber *) rollDice:(Dice*)d {
    NSNumber* value4D = [d randomizeValue];
    return value4D;
}

@end
