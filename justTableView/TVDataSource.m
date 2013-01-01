//
//  TVDataSource.m
//  justTableView
//
//  Created by Matthew Palmer on 1/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import "TVDataSource.h"

@implementation TVDataSource

- (id)init
{
    self = [super init];
    //_dataArray = [[NSMutableArray alloc]initWithObjects:@"AAA",@"BBB",@"CCC", nil];
    NSMutableArray *nsma = [[NSMutableArray alloc]initWithObjects:@"AAA",@"BBB",@"CCC", nil];
    [self setDataArray:nsma];
    
    return self;
}
@end
