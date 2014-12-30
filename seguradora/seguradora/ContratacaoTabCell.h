//
//  ContratacaoTabCell.h
//  seguradora
//
//  Created by Rafael Munhoz on 23/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContratacaoTabCell : UITableViewCell

@property(weak,nonatomic) IBOutlet UIImageView *icon;
@property(weak,nonatomic) IBOutlet UILabel *avistaValue;
@property(weak,nonatomic) IBOutlet UILabel *cartaoValue;
@property(weak,nonatomic) IBOutlet UILabel *boletoValue;
@property(weak,nonatomic) IBOutlet UIView *detailsView;
@property(weak,nonatomic) IBOutlet UIView *showDetailButtons;
@property(weak,nonatomic) IBOutlet UIView *hideDetailButtons;

-(IBAction)mostrarDetalhes:(id)sender;

@end
