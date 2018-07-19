//
//  PluginCell_01.m
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import "PluginCell_01.h"

@implementation PluginCell_01
{
    UIImageView *_imageView;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100.f)];
        
        [self addSubview:_imageView];
    }
    
    return self;
}

- (void)setNewSource:(id)source {
    NSString *imageName = (NSString *)source;
    
    _imageView.image = [UIImage imageNamed:imageName];
}

@end
