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
@property (nonatomic, strong) NSMutableArray* dice;
@property (nonatomic) int value;


- (void) rollDice;
- (void) printRolledDice;
- (void) holdDie;
- (void)unholdAll;

@end
