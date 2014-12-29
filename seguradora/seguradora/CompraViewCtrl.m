//
//  CompraViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 23/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "CompraViewCtrl.h"

@interface CompraViewCtrl ()

@end

NSArray *parcelas;
NSArray *bancos;

@implementation CompraViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    
    parcelas = [NSArray arrayWithObjects:@"2x",@"3x", @"4x", nil];
    bancos = [NSArray arrayWithObjects:@"Bradesco",@"Itaú",@"Banco do Brasil", nil];
    [scroller setContentSize:CGSizeMake(768, 1600)];
    // Do any additional setup after loading the view.
    
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    [navBar setTintColor:[UIColor whiteColor]];
    CGRect titleFrame = CGRectMake(0, 0, 630, 44);
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
    
    
    UIFont *titlefont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    UIColor *titleColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
    
    [titleLabel setText:@"Cotação"];
    [titleLabel setFont:titlefont];
    [titleLabel setTextColor:titleColor];
    //[titleLabel setBackgroundColor:[UIColor blackColor]];
    [titleLabel setTextAlignment:NSTextAlignmentCenter];
    
    UINavigationController *navCom = (UINavigationController *) [self.navigationController.viewControllers objectAtIndex:3];
    
    navCom.navigationItem.titleView = titleLabel;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UINavigationController *navCom = (UINavigationController *) [self.navigationController.viewControllers objectAtIndex:2];
    navCom.navigationItem.backBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@""
                                                                                style:UIBarButtonItemStylePlain
                                                                               target:nil
                                                                               action:nil];
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
            return [parcelas count];
            break;
        case 2:
            return [bancos count];
            break;
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
            pkView.text = [parcelas objectAtIndex:row];
            break;
        case 2:
            pkView.text = [bancos objectAtIndex:row];
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
