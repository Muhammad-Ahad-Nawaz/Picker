//
//  diaryAppDelegate.h
//  Picker
//
//  Created by ahadnawaz on 06/03/2013.
//  Copyright (c) 2013 ahadnawaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyDatePickerViewController;

@interface diaryAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MyDatePickerViewController *viewController;

@property (strong, nonatomic) UITabBarController *myTabBar;


@end
