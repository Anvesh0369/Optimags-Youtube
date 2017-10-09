//
//  ViewController.m
//  Optimags Youtube
//
//  Created by Anvesh on 10/5/17.
//  Copyright © 2017 Anvesh. All rights reserved.
//

#import "LoginViewController.h"
#import "SearchViewController.h"

@interface LoginViewController ()
{
    SearchViewController *searchViewController;
}

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    searchViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchViewController"];
    
    // Setting up Google Sign-In
    GIDSignIn *signIn = [GIDSignIn sharedInstance];
    signIn.delegate = self;
    signIn.uiDelegate = self;
    signIn.scopes = [NSArray arrayWithObjects:kGTLRAuthScopeYouTubeReadonly, nil];
    //[signIn signInSilently];
    
    //Add google+ button to view
    self.signInButton = [[GIDSignInButton alloc] init];
    //[self.view addSubview:self.signOnButton];
    
    
    //Youtube Service Object
    self.service = [[GTLRYouTubeService alloc] init];
    
    
}

#pragma mark - Google SignIn Delegate methods -

- (void)signIn:(GIDSignIn *)signIn didSignInForUser:(GIDGoogleUser *)user withError:(NSError *)error
{
    if (error != nil) {
        [self showAlert:@"Authentication Error" message:error.localizedDescription];
        self.service.authorizer = nil;
    }
    else
    {
        self.service.authorizer = user.authentication.fetcherAuthorizer;
        
        searchViewController.userObj = user;
        [self.navigationController presentViewController:searchViewController animated:YES completion:nil];
        
    }
}


// Helper for showing an alert
- (void)showAlert:(NSString *)title message:(NSString *)message {
    UIAlertController *alert =
    [UIAlertController alertControllerWithTitle:title
                                        message:message
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action)
     {
         [alert dismissViewControllerAnimated:YES completion:nil];
     }];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}



// Implement these methods only if the GIDSignInUIDelegate is not a subclass of
// UIViewController.

// Stop the UIActivityIndicatorView animation that was started when the user
// pressed the Sign In button
- (void)signInWillDispatch:(GIDSignIn *)signIn error:(NSError *)error {
    //[myActivityIndicator stopAnimating];
}

// Present a view that prompts the user to sign in with Google
- (void)signIn:(GIDSignIn *)signIn
presentViewController:(UIViewController *)viewController {
    [self presentViewController:viewController animated:YES completion:nil];
}

// Dismiss the "Sign in with Google" view
- (void)signIn:(GIDSignIn *)signIn
dismissViewController:(UIViewController *)viewController {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
