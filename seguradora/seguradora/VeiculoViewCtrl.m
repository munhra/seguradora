//
//  VeiculoViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 19/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "VeiculoViewCtrl.h"

@interface VeiculoViewCtrl ()

@end

NSArray *classe;
NSArray *ano;
NSArray *combustivel;
NSArray *numeroPortas;

@implementation VeiculoViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    
    classe = [NSArray arrayWithObjects:@"CLASSE A",@"CLASSE B", @"CLASSE C", nil];
    ano = [NSArray arrayWithObjects:@"2012",@"2013",@"2014",@"2015",@"2016",@"2017", nil];
    combustivel = [NSArray arrayWithObjects:@"Álcool",@"Gasolina", @"Diesel", nil];
    numeroPortas = [NSArray arrayWithObjects:@"01", @"02", @"03", @"04", @"05", nil];
    [scroller setContentSize:CGSizeMake(768, 1500)];
    
    //UIImage *navBarbg = [UIImage imageNamed:@"navbarBg"];
    //UINavigationBar *navBar = [[self navigationController] navigationBar];
    //[navBar setBackgroundImage:navBarbg forBarMetrics:UIBarMetricsDefault];
    
    //UITabBar *tabbar = [[self tabBarController] tabBar];
    //[[UITabBar appearance] setTintColor:[UIColor redColor]];
    //[[UITabBar appearance] setBarTintColor:[UIColor yellowColor]];
    //[[UITabBarItem appearance] setTitleTextAttributes:nil forState:nil];
    //UIImage *tabbarbgimage = [UIImage imageNamed:@"tabbarbg.png"];
    //[tabbar setBackgroundImage:navBarbg];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (pickerView.tag) {
        case 1:
            return [classe count];
            break;
        case 2:
            return [ano count];
            break;
        case 3:
            return [ano count];
        case 4:
            return [combustivel count];
        case 5:
            return [numeroPortas count];
        default:
            break;
            return 0;
    }
    return 0;
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *pkView = (UILabel *)view;
    
    if (!pkView){
        pkView = [[UILabel alloc] init];
        UIFont *pickerfont = [UIFont fontWithName:@"Helvetica Neue" size:14];
        UIColor *pickerColor = [[UIColor alloc] initWithRed:22.0f/255.0f green:68.0f/255.0f blue:94.0f/255.0f alpha:1.0f];
        [pkView setFont:pickerfont];
        [pkView setTextColor:pickerColor];
        pkView.numberOfLines = 3;
    }
    
    switch (pickerView.tag) {
        case 1:
            pkView.text = [classe objectAtIndex:row];
            break;
        case 2:
            pkView.text = [ano objectAtIndex:row];
            break;
        case 3:
            pkView.text = [ano objectAtIndex:row];
            break;
        case 4:
            pkView.text = [combustivel objectAtIndex:row];
            break;
        case 5:
            pkView.text = [numeroPortas objectAtIndex:row];
            break;
        default:
            break;
    }
    
    return pkView;
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
