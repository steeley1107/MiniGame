//
//  ViewController.m
//  2PlayerMath
//
//  Created by Steele on 2015-10-26.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "ViewController.h"
#import "PlayerDetailViewController.h"

@interface ViewController ()

@property (nonatomic) GameController *game;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.game = [[GameController alloc] init];
    
    self.questionLabel.text = [self.game printQuestion];
    
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"%d", self.game.player1.lives];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"%d", self.game.player2.lives];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submitQuestionButton:(id)sender {
    
    if (self.answerTextField && self.game.gameIsActive) {
        self.game.currentPlayer.answer = [self.answerTextField.text doubleValue];
        
        [self.game checkAnswerFromPlayer];
        
        self.player1ScoreLabel.text = [NSString stringWithFormat:@"%d", self.game.player1.lives];
        self.player2ScoreLabel.text = [NSString stringWithFormat:@"%d", self.game.player2.lives];
        
        self.gameStatusLabel.text = [self.game printGameStatus];
        
        self.questionLabel.text = [self.game printQuestion];
        self.answerTextField.text = @"";
        [self.game switchPlayer];
    }
}

- (IBAction)num1Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"1"];
}

- (IBAction)num2Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"2"];
}

- (IBAction)num3Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"3"];
}

- (IBAction)num4Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"4"];
}

- (IBAction)num5Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"5"];
}

- (IBAction)num6Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"6"];
}

- (IBAction)num7Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"7"];
}

- (IBAction)num8Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"8"];
}

- (IBAction)num9Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"9"];
}

- (IBAction)num0Button:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"0"];
}

- (IBAction)numNegButton:(id)sender {
    self.answerTextField.text = [self.answerTextField.text stringByAppendingString:@"-"];
}

- (IBAction)deleteButton:(id)sender {
    NSString *currentString = self.answerTextField.text;
    if (currentString.length > 0) {
        self.answerTextField.text = [currentString substringToIndex:currentString.length-1];
    }
}

- (IBAction)newGameButton:(id)sender {
    self.game = [[GameController alloc] init];
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"%d", self.game.player1.lives];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"%d", self.game.player2.lives];
    self.gameStatusLabel.text = @"";
    self.questionLabel.text = [self.game printQuestion];
    self.answerTextField.text = @"";
    
}
- (IBAction)player1StatsButton:(id)sender {
    self.game.statPlayer = self.game.player1;
    [self performSegueWithIdentifier:@"detailSegue" sender:self];
    
}

- (IBAction)player2StatsButton:(id)sender {
    self.game.statPlayer = self.game.player2;
    [self performSegueWithIdentifier:@"detailSegue" sender:self];
    
}




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqual:@"detailSegue"]){
        PlayerDetailViewController *playerDetailVC = segue.destinationViewController;
        
        playerDetailVC.player = self.game.statPlayer;
        
        
    }
    
}












@end
