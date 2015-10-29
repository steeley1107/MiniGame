//
//  Player.m
//  2PlayerMath
//
//  Created by Steele on 2015-10-26.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initPlayerWithName: (NSString*)name {
    self = [super init];
    if (self) {
        _name = name;
        _lives = 3;
    }
    return self;
}


-(void)lostLife {
    self.lives -= 1;
}

@end
