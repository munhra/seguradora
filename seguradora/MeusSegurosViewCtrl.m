//
//  MeusSegurosViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 29/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "MeusSegurosViewCtrl.h"

@interface MeusSegurosViewCtrl ()

@end

@implementation MeusSegurosViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    [navBar setTintColor:[UIColor whiteColor]];
    CGRect titleFrame = CGRectMake(0, 0, 630, 44);
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
    
    
    UIFont *titlefont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    UIColor *titleColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
    
    [titleLabel setText:@"Meus Seguros"];
    [titleLabel setFont:titlefont];
    [titleLabel setTextColor:titleColor];
    //[titleLabel setBackgroundColor:[UIColor blackColor]];
    [titleLabel setTextAlignment:NSTextAlignmentCenter];
    
    UINavigationController *navCom = (UINavigationController *) [self.navigationController.viewControllers objectAtIndex:1];
    
    navCom.navigationItem.titleView = titleLabel;
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
