//
//  Player.h
//  2PlayerMath
//
//  Created by Steele on 2015-10-26.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) int lives;
@property (nonatomic) BOOL isTurn;
@property (nonatomic) int answer;

- (instancetype)initPlayerWithName: (NSString*)name;

-(void)lostLife;

@end
