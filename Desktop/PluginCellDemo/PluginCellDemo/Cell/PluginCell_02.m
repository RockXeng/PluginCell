//
//  PluginCell_02.m
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import "PluginCell_02.h"

@implementation PluginCell_02
{
    UILabel *_titleLable;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _titleLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100.f)];
        _titleLable.textAlignment = NSTextAlignmentCenter;
        _titleLable.font = [UIFont systemFontOfSize:20.f];
        _titleLable.numberOfLines = 0;
        
        [self addSubview:_titleLable];
    }
    
    return self;
}

- (void)setNewSource:(id)source {
    NSString *title = (NSString *)source;
    
    _titleLable.text = title;
}

@end
