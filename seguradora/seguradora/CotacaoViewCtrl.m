//
//  CotacaoViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 13/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "CotacaoViewCtrl.h"

@interface CotacaoViewCtrl ()

@end

NSArray *classe;
NSArray *ano;
NSArray *combustivel;
NSArray *numeroPortas;

@implementation CotacaoViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    
    classe = [NSArray arrayWithObjects:@"CLASSE A",@"CLASSE B", @"CLASSE C", nil];
    ano = [NSArray arrayWithObjects:@"2012",@"2013",@"2014",@"2015",@"2016",@"2017", nil];
    combustivel = [NSArray arrayWithObjects:@"Alcool",@"Gasolina", @"Diesel", nil];
    numeroPortas = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    
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
        default:
            break;
            return 0;
    }
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    switch (pickerView.tag) {
        case 1:
            return [classe objectAtIndex:row];
            break;
        case 2:
            return [ano objectAtIndex:row];
            break;
        case 3:
            return [ano objectAtIndex:row];
        case 4:
            return [combustivel objectAtIndex:row];
        default:
            break;
            return @"";
    }
    
    return @"";
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    
    UILabel *pkView = (UILabel *)view;
    
    if (!pkView){
        
        pkView = [[UILabel alloc] init];
        [pkView setFont:[UIFont fontWithName:@"System" size:14]];
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
