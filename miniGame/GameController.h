//
//  GameController.h
//  2PlayerMath
//
//  Created by Steele on 2015-10-26.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableString *question;
@property (nonatomic) BOOL gameIsActive;
@property (nonatomic) int xVar;
@property (nonatomic) int yVar;
@property (nonatomic) int answer;
@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) Player *currentPlayer;
@property (nonatomic) Player *statPlayer;


- (NSString *)printQuestion;

- (BOOL)checkGameIsActive;

-(void)switchPlayer;

- (void)checkAnswerFromPlayer;

- (NSString *)printGameStatus;


@end
