//
//  ContratOnline.m
//  seguradora
//
//  Created by Rafael Munhoz on 17/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "ContratOnline.h"

@interface ContratOnline ()

@end

@implementation ContratOnline

- (void)viewDidLoad {
    [super viewDidLoad];
    [scrollview setScrollEnabled:YES];
    [scrollview setContentSize:CGSizeMake(768, 2000)];
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
