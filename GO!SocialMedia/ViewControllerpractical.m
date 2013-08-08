//
//  ViewControllerpractical.m
//  GO!SocialMedia
//
//  Created by Adam Rais on 28/11/2012.
//  Copyright (c) 2012 SocialGO. All rights reserved.
//

#import "ViewControllerpractical.h"

@interface ViewControllerpractical ()

@end

@implementation ViewControllerpractical

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oh Dear"
                                                    message:@"Can't connect. Please check your internet Connection"
                                                   delegate:self
                                          cancelButtonTitle:@"Go Back"
                                          otherButtonTitles:nil];
    [alert show];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_practical setDelegate:self];
    NSString *fullURL=@"http://adam182testing.comoj.com/practical.html";
    NSURL *url=[NSURL URLWithString:fullURL];
    NSURLRequest *requestOBJ=[NSURLRequest requestWithURL:url];
    [_practical loadRequest:requestOBJ];

    [super viewDidLoad];
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(swipeRightAction:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [_practical addGestureRecognizer:swipeRight];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeftAction:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [_practical addGestureRecognizer:swipeLeft];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

- (void)swipeRightAction:(id)ignored
{
    NSLog(@"Swipe Right");
    [_practical goBack];
}

- (void)swipeLeftAction:(id)ignored
{
    NSLog(@"Swipe Left");
    [_practical goForward];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end