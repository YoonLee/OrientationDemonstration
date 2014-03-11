//
//  RootViewController.h
//  OrientationIt
//
//  Created by Yoon Lee on 3/11/14.
//  Copyright (c) 2014 Yoon Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UIWebViewDelegate>
{
    UIWebView *googleWebView;
}

@property(nonatomic, retain)UIWebView *googleWebView;
@property(nonatomic, retain)NSURL *url;

- (id)initWithURL:(NSURL*)_url;

@end
