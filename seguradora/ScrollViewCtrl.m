//
//  ScrollViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 17/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "ScrollViewCtrl.h"

@interface ScrollViewCtrl ()

@end

@implementation ScrollViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(768, 2000)];
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
