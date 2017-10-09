//
//  AppDelegate.h
//  Optimags Youtube
//
//  Created by Anvesh on 10/5/17.
//  Copyright © 2017 Anvesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleSignIn/GoogleSignIn.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

