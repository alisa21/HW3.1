//
//  RoutesViewController.m
//  HW3
//
//  Created by Алиса  on 30.09.14.
//  Copyright (c) 2014 Alisa. All rights reserved.
//

#import "RoutesViewController.h"

@interface RoutesViewController ()

@end

@implementation RoutesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section %d", section+1];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"routeCell" forIndexPath:indexPath];
  
    
    cell.textLabel.text = [NSString stringWithFormat:@"Маршрут %d", indexPath.row+1];//@"First test cell";
    
//    srand48(time(0));
//    double r = drand48();
    
    int r = arc4random()%5;
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Цена %d", r];
    
    
    
    if(indexPath.section==0)
    {
        cell.imageView.image = [UIImage imageNamed:@"star.png"];
    }
    else
    {
        cell.imageView.image = [UIImage imageNamed:@"star1.png"];
    }
    
    return cell;
}



@end
