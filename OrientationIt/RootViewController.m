//
//  RootViewController.m
//  OrientationIt
//
//  Created by Yoon Lee on 3/11/14.
//  Copyright (c) 2014 Yoon Lee. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController
@synthesize googleWebView;
@synthesize url;

- (id)initWithURL:(NSURL*)_url
{
    if (self = [super init])
        [self setUrl:_url];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /* 1 */
    // self.googleWebView = [[UIWebView alloc] initWithFrame:CGRectZero];
    self.googleWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    
    // or you can do this!!!
    [self.googleWebView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    [self.googleWebView setDelegate:self];
    [self.googleWebView loadRequest:[NSURLRequest requestWithURL:self.url]];
    [self.view addSubview:self.googleWebView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self updateLayout];
}

- (void)updateLayout
{
    CGRect rect = self.view.bounds;
    NSLog(@"%@", NSStringFromCGRect(rect));
    [self.googleWebView setFrame:rect];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    /* 1 */
    // [self updateLayout];
}

- (void)dealloc
{
    [super dealloc];
    
    [googleWebView stopLoading];
    [googleWebView release];
    googleWebView = nil;
}

@end
