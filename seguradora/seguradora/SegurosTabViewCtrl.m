//
//  SegurosTabViewCtrl.m
//  seguradora
//
//  Created by Rafael Munhoz on 13/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import "SegurosTabViewCtrl.h"
#import "SegurosTabCell.h"

@interface SegurosTabViewCtrl ()

@end

NSArray *insurance;
NSArray *segIconNames;
NSArray *segBgNames;

@implementation SegurosTabViewCtrl


- (void)viewDidLoad {
    [super viewDidLoad];
    
    insurance = [NSArray arrayWithObjects:@"Automóveis",@"Equipamentos Portáteis", @"Aéreo", @"Assitência Viagens", @"Vida", @"Residência", @"Outro", nil];
    segIconNames = [NSArray arrayWithObjects:@"car_icon",@"portateis_icons", @"aero_icon", @"viagem_icon", @"vida_icon", @"casa_icon", @"civil_icon", nil];
    segBgNames = [NSArray arrayWithObjects:@"car_bg",@"portateis_bg", @"aero_bg", @"viagem_bg", @"vida_bg", @"casa_bg", @"civil_bg", nil];
    
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    [navBar setTintColor:[UIColor whiteColor]];
    [navBar setHidden:NO];
    CGRect titleFrame = CGRectMake(0, 0, 768, 44);
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
    
    
    UIFont *titlefont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    UIColor *titleColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
    
    [titleLabel setText:@"Seguros"];
    [titleLabel setFont:titlefont];
    [titleLabel setTextColor:titleColor];
    //[titleLabel setBackgroundColor:[UIColor blackColor]];
    [titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.navigationItem.backBarButtonItem setTitle:@""];
    
    self.navigationItem.titleView = titleLabel;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [insurance count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SegurosTabCell *cell = (SegurosTabCell*)[tableView dequeueReusableCellWithIdentifier:@"seguroCell" forIndexPath:indexPath];

    cell.cellbackground.image = [UIImage imageNamed:[segBgNames objectAtIndex:indexPath.row]];
    cell.icon.image = [UIImage imageNamed:[segIconNames objectAtIndex:indexPath.row]];
    cell.title.text = [insurance objectAtIndex:indexPath.row];
    
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
