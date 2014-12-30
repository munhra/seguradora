//
//  ContratacaoTabCell.m
//  seguradora
//
//  Created by Rafael Munhoz on 23/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "ContratacaoTabCell.h"

@implementation ContratacaoTabCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(IBAction)mostrarDetalhes:(id)sender
{
    NSLog(@"Show Details !");
    
    UIButton *detailButton = (UIButton *)sender;
    
    //[UIView animateWithDuration:0.5 animations:^{
    //    [detailButton setAlpha:0];
    //}];
    
    [detailButton setTitle:@"Esconder Detalhes" forState:UIControlStateNormal];
    
    [UIView animateWithDuration:0.5 animations:^{
        if (detailButton.tag == 10) {
            [self.detailsView setAlpha:1];
            [self.hideDetailButtons setAlpha:1];
            [self.showDetailButtons setAlpha:0];
        }else{
            [self.detailsView setAlpha:0];
            [self.showDetailButtons setAlpha:1];
            [self.hideDetailButtons setAlpha:0];
        }
    }];
    
}

@end
