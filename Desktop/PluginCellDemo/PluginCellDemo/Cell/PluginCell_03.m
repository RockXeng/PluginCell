//
//  PluginCell_03.m
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import "PluginCell_03.h"

@implementation PluginCell_03
{
    UIButton *_button;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 200.f)/2, 30.f, 200.f, 40.f)];
        [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _button.titleLabel.font = [UIFont systemFontOfSize:16.f];
        [_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_button];
    }
    
    return self;
}

- (void)setNewSource:(id)source {
    NSDictionary *info = (NSDictionary *)source;
    
    [_button setTitle:info[@"title"] forState:UIControlStateNormal];
    [_button setBackgroundImage:[UIImage imageNamed:info[@"image"]] forState:UIControlStateNormal];
}

- (void)buttonAction:(UIButton *)button {
    NSLog(@"plugin_03");
}

@end
