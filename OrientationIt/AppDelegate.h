//
//  AppDelegate.h
//  OrientationIt
//
//  Created by Yoon Lee on 3/11/14.
//  Copyright (c) 2014 Yoon Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    RootViewController *rootViewController;
    
}

@property(nonatomic, retain)UIWindow *window;
@property(nonatomic, retain)RootViewController *rootViewController;

@end
