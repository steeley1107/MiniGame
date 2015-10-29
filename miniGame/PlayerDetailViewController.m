//
//  PlayerDetailViewController.m
//  miniGame
//
//  Created by Steele on 2015-10-28.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "PlayerDetailViewController.h"

@interface PlayerDetailViewController ()

@end

@implementation PlayerDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.playerStat1Label.text = self.player.name;
    self.playerStat1Label.text = [NSString stringWithFormat:@"Players name: %@",self.player.name];
    self.playerStat2Label.text = [NSString stringWithFormat:@"Lives %d",self.player.lives];
    self.playerStat3Label.text = [NSString stringWithFormat:@"Players turn: %@",self.player.isTurn ? @"Yes":@"No"];
    self.playerStat4Label.text = [NSString stringWithFormat:@"Player Last Answer: %d",self.player.answer];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (instancetype)init
{
    self = [super init];
    if (self) {
        _player = [[Player alloc]init];
    }
    return self;
}
@end
