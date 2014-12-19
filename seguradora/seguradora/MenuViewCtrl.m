//
//  MenuViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 19/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "MenuViewCtrl.h"

@interface MenuViewCtrl ()

@end

@implementation MenuViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *navBarbg = [UIImage imageNamed:@"navbarBg"];
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    [navBar setBackgroundImage:navBarbg forBarMetrics:UIBarMetricsDefault];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
