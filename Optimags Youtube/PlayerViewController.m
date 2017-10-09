//
//  PlayerViewController.m
//  Optimags Youtube
//
//  Created by Anvesh on 10/6/17.
//  Copyright © 2017 Anvesh. All rights reserved.
//

#import "PlayerViewController.h"

@interface PlayerViewController ()



@end

@implementation PlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    
    NSDictionary *playerVars = @{@"playsinline" : @1,};
    if (_videoId!= nil) {
        [self.playerView loadWithVideoId:_videoId playerVars:playerVars];
        
         [self.playerView cueVideoById:_videoId startSeconds:0.0 suggestedQuality:kYTPlaybackQualityAuto];
    }
    else
    {
        [self.playerView cueVideoById:@"M7lc1UVf-VE" startSeconds:0.0 suggestedQuality:kYTPlaybackQualityAuto];
    }    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playVideo:(id)sender {
    [self.playerView playVideo];
}

- (IBAction)stopVideo:(id)sender {
    [self.playerView stopVideo];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
