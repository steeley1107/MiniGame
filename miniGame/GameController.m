//
//  GameController.m
//  2PlayerMath
//
//  Created by Steele on 2015-10-26.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "GameController.h"

@implementation GameController


- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initPlayerWithName:@"Player1"];
        _player2 = [[Player alloc] initPlayerWithName:@"Player2"];
        _currentPlayer = _player1;
        _gameIsActive = YES;
        _player1.isTurn = YES;
    }
    return self;
}


-(void)generateQuestion {
    self.xVar = (int)arc4random()%20+1;
    self.yVar = (int)arc4random()%20+1;
    
    self.answer = self.xVar + self.yVar;
}


-(void)checkAnswerFromPlayer {
    if (self.currentPlayer.answer != (int)self.answer) {
        [self.currentPlayer lostLife];
    }
}


-(void)switchPlayer {
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
        self.player1.isTurn = NO;
        self.player2.isTurn = YES;
        
    }
    else {
        self.currentPlayer = self.player1;
        self.player1.isTurn = YES;
        self.player2.isTurn = NO;
    }
}


- (NSString *)printQuestion {
    [self generateQuestion];
    return [NSString stringWithFormat:@"%@: %d + %d?", self.currentPlayer.name,self.xVar,self.yVar];
}

- (BOOL)checkGameIsActive {
    if (self.player1.lives <= 0 || self.player2.lives <= 0){
        self.gameIsActive = NO;
        return NO;
    }
    else {
        self.gameIsActive = YES;
        return YES;
    }
}

- (NSString *)printGameStatus {
    if (![self checkGameIsActive]) {
        return [NSString stringWithFormat:@"Game Over"];
    }
    else if ((self.currentPlayer.answer != (int)self.answer)) {
        return [NSString stringWithFormat:@"%@ is incorrect.", self.currentPlayer.name];
    }
    else {
        return [NSString stringWithFormat:@"%@ is correct.", self.currentPlayer.name];
    }
}

@end
