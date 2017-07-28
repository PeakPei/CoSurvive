//
//  BarrierComponent.h
//  Cosurvive
//
//  Created by Errol Cheong on 2017-07-26.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <GameplayKit/GameplayKit.h>
#import "RedState.h"
#import "BlueState.h"
#import "GreenState.h"
#import "YellowState.h"
#import "OrangeState.h"
#import "PurpleState.h"

@class Player;
@interface BarrierComponent : GKComponent

@property (strong, nonatomic) Player* player;
@property (strong, nonatomic) UIColor *color;
@property (assign, nonatomic) CGSize size;
@property (strong, nonatomic) SKShapeNode *shape;
@property (strong, nonatomic) GKStateMachine *stateMachine;

- (instancetype)initWithPlayer:(Player*)player withColor:(UIColor*)color Size:(CGSize)size withShape:(NSInteger)shape;

@end
