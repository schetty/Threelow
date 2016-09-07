//
//  Dice.h
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, strong) NSNumber* value;
@property (nonatomic, strong) NSString* symbol;


- (NSNumber*) randomizeValue;

- (instancetype) initWithValue:(NSNumber*)value andSymbol:(NSString*)symbol;

@end
