//
//  ViewController.m
//  KVOPrinciple
//
//  Created by jike on 2018/1/10.
//  Copyright © 2018年 YM. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+KVO.h"
#import "KVOPerson.h"
@interface ViewController ()
@property (strong, nonatomic)KVOPerson * person;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testKvo];
}

- (void)testKvo {
    self.person = [KVOPerson new];
    [self.person YM_addObserver:self forKeyPath:@"name" withBlock:^(id observedObject, NSString *observedKey, id oldValue, id newValue) {
        NSLog(@"new : %@ | old : %@",newValue,oldValue);
    }];
    self.person.name = @"Z";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.person.name = [self.person.name stringByAppendingString:@"A"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
