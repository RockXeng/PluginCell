//
//  PluginBaseCell.h
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PluginBaseCell;

typedef void (^PluginBaseCellBlock)(NSString *function, PluginBaseCell *cell, NSInteger buttonIndex);

@interface PluginBaseCell : UITableViewCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (void)setSubSource:(id )dic andFunction:(NSString *)fun withBlock:(PluginBaseCellBlock)block;

@end
