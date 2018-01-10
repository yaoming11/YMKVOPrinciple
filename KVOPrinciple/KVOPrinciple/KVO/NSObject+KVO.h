//
//  NSObject+KVO.h
//  YMTools
//
//  Created by ym on 2018/1/8.
//  Copyright © 2018年 YM. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^YMObserveingBlock)(id observedObject, NSString *observedKey, id oldValue, id newValue);

@interface NSObject (KVO)
- (void)YM_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath withBlock:(YMObserveingBlock)block;

- (void)YM_removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;
@end
