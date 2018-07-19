//
//  PluginViewController.m
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import "PluginViewController.h"
#import "PluginBaseCell.h"

@interface PluginViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation PluginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Plugin";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.estimatedRowHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
    }
    
    return _tableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
        
        [_dataArray addObject:@{@"function": @"01", @"source": @"Plugin_Back"}];
        [_dataArray addObject:@{@"function": @"02", @"source": @"这是Plugin_02"}];
        [_dataArray addObject:@{@"function": @"03", @"source": @{@"image": @"Plugin_Back",
                                                                 @"title": @"这是Plugin_03"
                                                                 }}];
    }
    
    return _dataArray;
}

#pragma mark - UITableViewDataSource/UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id source = self.dataArray[indexPath.row][@"source"];
    NSString *function = self.dataArray[indexPath.row][@"function"];
    
    PluginBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[PluginBaseCell alloc] initWithReuseIdentifier:@"cell"];
    }
    
    [cell setSubSource:source andFunction:function withBlock:nil];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

@end
