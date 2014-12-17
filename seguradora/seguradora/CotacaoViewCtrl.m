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
    
    classe = [NSArray arrayWithObjects:@"Classe de bônus",@"CLASSE A",@"CLASSE B", @"CLASSE C", nil];
    ano = [NSArray arrayWithObjects:@"Ano de fabricação",@"2012",@"2013",@"2014",@"2015",@"2016",@"2017", nil];
    combustivel = [NSArray arrayWithObjects:@"Combustível",@"Alcool",@"Gasolina", @"Diesel", nil];
    numeroPortas = [NSArray arrayWithObjects:@"Quantidade de Portas",@"1", @"2", @"3", @"4", @"5", nil];
    
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
/*
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
        case 5:
            return [numeroPortas objectAtIndex:row];
        default:
            break;
            return @"";
    }
    
    return @"";
}*/

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    
    UILabel *pkView = (UILabel *)view;
    
    if (!pkView){
        
        CGRect frame = CGRectMake(0.0, 0.0, 70, 30);
        
        
        pkView = [[UILabel alloc] init];
        
        //pkView = [[UILabel alloc] initWithFrame:frame];
        //[pkView setBackgroundColor:[UIColor blackColor]];
        //[pkView setTextAlignment:UITextAlignmentLeft];
        
        [pkView setFont:[UIFont systemFontOfSize:13]];
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
