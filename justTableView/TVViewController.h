//
//  TVViewController.h
//  justTableView
//
//  Created by Matthew Palmer on 1/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TVDataSource.h"

@interface TVViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *tvvcDataArray;

@end
