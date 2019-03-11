//
//  ViewController.m
//  JALHomePage
//
//  Created by j066 on 2019/3/9.
//  Copyright © 2019 j066. All rights reserved.
//

#import "JALHomePageController.h"
#import <MGJRouter/MGJRouter.h>

@interface JALHomePageController ()

@end

@implementation JALHomePageController

+ (void)load
{
    [super load];
    
    [MGJRouter registerURLPattern:@"JAL://JALHomePage/MainVC" toObjectHandler:^id(NSDictionary *routerParameters) {
        JALHomePageController *homePageVC = [[JALHomePageController alloc] init];
        return homePageVC;
    }];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"首页";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
}


@end
