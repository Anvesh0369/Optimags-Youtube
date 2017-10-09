//
//  SearchViewController.h
//  Optimags Youtube
//
//  Created by Anvesh on 10/6/17.
//  Copyright © 2017 Anvesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleSignIn/GoogleSignIn.h>
#import <GTLRYouTube.h>
#import <IonIcons.h>

@interface SearchViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) NSMutableArray *videoSearchArray;
@property (weak, nonatomic) IBOutlet UITableView *searchTableView;
@property (nonatomic, strong) GTLRYouTubeService *youtubeServices;
@property (nonatomic, strong) GIDGoogleUser *userObj;

@property (strong, nonatomic) IBOutlet UITextField *searchTextField;

@property (strong, nonatomic) IBOutlet UIButton *searchButton;

- (IBAction)searchAction:(id)sender;

@end
