//
//  SegurosTabCell.h
//  seguradora
//
//  Created by Rafael Munhoz on 13/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegurosTabCell : UITableViewCell

@property(weak,nonatomic) IBOutlet UILabel *title;
@property(weak,nonatomic) IBOutlet UIImageView *icon;
@property(weak,nonatomic) IBOutlet UIImageView *cellbackground;

@end
