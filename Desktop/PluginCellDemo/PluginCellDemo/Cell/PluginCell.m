//
//  PluginCell.m
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import "PluginCell.h"

@implementation PluginCell

-(instancetype)initWithFunction:(NSString *)function {
    NSString *class = [NSString stringWithFormat:@"%@_%@",NSStringFromClass(self.class), function];
    
    return [[NSClassFromString(class) alloc] init];
}

-(void)setSource:(id)source
       withBlock:(PluginCellBlock)block {
    _block = block;
    [self setNewSource:source];
}

-(void)touchBtn:(id)sender {
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *btn = (UIButton *)sender;
        _block(btn.tag);
    }
    else if ([sender isKindOfClass:[UIGestureRecognizer class]]) {
        UIView *view = [sender view];
        _block(view.tag);
    }
}

-(void)setNewSource:(id)source {
    NSLog(@"子类没有继承");
}

@end
