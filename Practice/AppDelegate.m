//
//  AppDelegate.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import "AppDelegate.h"

@interface AppDelegate ()
    
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 진입 View 지정
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    UIViewController *viewController = [[UIViewController alloc] init];
    viewController = [storyboard instantiateViewControllerWithIdentifier:@"ImageDownloadViewController"];

    UINavigationController *navigationContoller = [[UINavigationController alloc] initWithRootViewController: viewController];

    self.window.rootViewController = navigationContoller;
    [self.window makeKeyAndVisible];

    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
