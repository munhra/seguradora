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
    
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    [navBar setBarTintColor:[UIColor colorWithRed:38.0f/255.0f green:55.0f/255.0f blue:77.0f/255.0f alpha:1]];
    //[navBar setHidden:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    [navBar setHidden:YES];
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
