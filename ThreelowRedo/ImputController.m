//
//  ImputController.m
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "ImputController.h"

@implementation ImputController

//return type | method name  | parameter type | parameter name

- (NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars [255];
    
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *str = [NSString stringWithFormat:@"%s", inputChars];
    str = [str stringByReplacingOccurrencesOfString:(@"\n") withString:(@"")];
    
    return str;
}

@end
