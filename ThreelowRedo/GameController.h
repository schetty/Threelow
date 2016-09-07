//
//  GameController.h
//  ThreelowRedo
//
//  Created by naomi schettini on 2016-09-07.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableSet* heldDice;
@property (nonatomic, strong) NSSet* diceSet;

- (NSString *)inputForPrompt:(NSString *)promptString;

- (NSNumber*) roll;

@end
