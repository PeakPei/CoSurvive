//
//  HealthBarNode.m
//  Cosurvive
//
//  Created by Errol Cheong on 2017-07-26.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "HealthBarNode.h"

@implementation HealthBarNode

-(instancetype)initWithSize:(CGSize)size
{
  self = [super init];
  if (self)
  {
    _size = size;
    _greenBar = [[SKSpriteNode alloc] initWithColor:[UIColor greenColor] size:size];
    _redBar = [[SKSpriteNode alloc] initWithColor:[UIColor redColor] size:size];
    [self addChild:_redBar];
    [self addChild:_greenBar];
  }
  return self;
}


-(void)setHealthBar:(float)percentHealth
{
  self.redBar.size = CGSizeMake(percentHealth * self.size.width, self.size.height);
  self.redBar.position = CGPointMake(self.greenBar.position.x - (percentHealth * self.size.width)/2, self.greenBar.position.y);
}


@end
