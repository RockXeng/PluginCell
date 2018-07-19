//
//  PluginCell.h
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^PluginCellBlock)(NSInteger buttonIndex);

@interface PluginCell : UIView

@property (nonatomic, copy) PluginCellBlock block;

- (instancetype)initWithFunction:(NSString *)function;
/**
 父类分发
 */
- (void)setSource:(id)source withBlock:(PluginCellBlock)block;
/**
 按钮和tap手势接收器
 */
- (void)touchBtn:(UIButton *)sender;
/**
 子类通过数据加载UI
 */
- (void)setNewSource:(id)source;

@end
