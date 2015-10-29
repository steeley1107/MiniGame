//
//  PlayerDetailViewController.h
//  miniGame
//
//  Created by Steele on 2015-10-28.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface PlayerDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *playerStat1Label;
@property (weak, nonatomic) IBOutlet UILabel *playerStat2Label;
@property (weak, nonatomic) IBOutlet UILabel *playerStat3Label;
@property (weak, nonatomic) IBOutlet UILabel *playerStat4Label;

@property (nonatomic) Player *player;

@end
