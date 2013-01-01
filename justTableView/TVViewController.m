//
//  TVViewController.m
//  justTableView
//
//  Created by Matthew Palmer on 1/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import "TVViewController.h"
@interface TVViewController ()
@end
@implementation TVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TVDataSource *tvds = [[TVDataSource alloc]init];
    _tvvcDataArray = [tvds dataArray];
    NSLog(@"%@", _tvvcDataArray); //we have to use this property/instance variable so it works in our other methods
    NSMutableArray *testMA = [[NSMutableArray alloc]initWithObjects:@"DD", nil];
    [tvds setDataArray:testMA]; //add objects to end. try doing it with like the propery variable etc or something property-y
    NSLog(@"%@",[tvds dataArray]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    // If you're serving data from an array, return the length of the array:
    return [_tvvcDataArray count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                }
    
    // Set the data for this cell:
    
    cell.textLabel.text = [_tvvcDataArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"More text";
    cell.imageView.image = [UIImage imageNamed:@"flower.png"];
    
    // set the accessory view:
    cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}
@end
