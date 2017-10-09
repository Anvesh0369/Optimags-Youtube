//
//  ViewController.h
//  Optimags Youtube
//
//  Created by Anvesh on 10/5/17.
//  Copyright © 2017 Anvesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>
#import <GTLRYouTube.h>


@interface LoginViewController : UIViewController <GIDSignInUIDelegate, GIDSignInDelegate >

@property (strong, nonatomic) IBOutlet GIDSignInButton *signInButton;
@property (nonatomic, strong) UITextView *output;
@property (nonatomic, strong) GTLRYouTubeService *service;


@end

