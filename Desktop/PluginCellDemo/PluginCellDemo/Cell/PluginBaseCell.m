//
//  PluginBaseCell.m
//  PluginCellDemo
//
//  Created by RockXeng on 2018/7/19.
//  Copyright © 2018年 ShuSheng. All rights reserved.
//

#import "PluginBaseCell.h"
#import "PluginCell.h"

#import <objc/runtime.h>

@implementation PluginBaseCell
{
    PluginCell *_subView;
}

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setSubSource:(id)dic
         andFunction:(NSString *)function
           withBlock:(PluginBaseCellBlock)block {
    if ([self subIsExist] == NO) {
        _subView = [[PluginCell alloc] initWithFunction:function];
        
        [self.contentView addSubview:_subView];
    }
    
    __weak typeof(self)weakSelf = self;
    [_subView setSource:dic withBlock:^(NSInteger buttonIndex) {
        block(function, weakSelf, buttonIndex);
    }];
}


- (BOOL)subIsExist {
    Class cls = self.class;
    Ivar view = class_getInstanceVariable(cls, [@"_subView" UTF8String]);
    if (view != NULL) {
        NSString *key = [NSString stringWithUTF8String:ivar_getName(view)];
        id la = [self valueForKey:key];
        if (la) {
            return YES;
        }
    }
    return NO;
}

@end
