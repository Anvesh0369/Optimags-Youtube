//
//  PlayerViewController.h
//  Optimags Youtube
//
//  Created by Anvesh on 10/6/17.
//  Copyright © 2017 Anvesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTPlayerView.h"

@interface PlayerViewController : UIViewController
@property(strong, nonatomic) IBOutlet YTPlayerView *playerView;

@property(nonatomic, strong)NSString *videoId;


- (IBAction)playVideo:(id)sender;
- (IBAction)stopVideo:(id)sender;

@end
