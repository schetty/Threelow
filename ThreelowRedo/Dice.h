//
//  Dice.h
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int value;
@property (nonatomic, strong) NSString* symbol;


- (void) randomizeValue;

- (instancetype) initWithValue:(int)value andSymbol:(NSString*)symbol;
-(instancetype) initWithX;

@end
