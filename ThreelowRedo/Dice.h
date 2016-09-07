//
//  Dice.h
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, strong) NSNumber* currentValue;
@property (nonatomic, strong) NSArray* diceArray;
@property (nonatomic, strong) NSString* symbol;

- (NSNumber*) randomizeValue;

- (instancetype) initWithValue:(NSNumber*)valueAmt andSymbol:(NSString*)symbol;

@end
