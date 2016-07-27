//
//  ViewController.m
//  masnoryDemo
//
//  Created by chenjian on 16/7/27.
//  Copyright © 2016年 chenjian. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setUI];
}
#pragma mark 初始化子视图
-(void)setUI{
    
    UIView *view1 = [[UIView alloc] init];
    UIView *view2 = [[UIView alloc] init];
    UIView *view3 = [[UIView alloc] init];
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    view1.backgroundColor = [UIColor redColor];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
//    [view mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.view).offset(10);
//        make.left.mas_equalTo(self.view).offset(10);
//        make.bottom.mas_equalTo(self.view).offset(-10);
//        make.right.mas_equalTo(self.view).offset(-10);
//    }];
    UIEdgeInsets padding = UIEdgeInsetsMake(20,20, 20, 20);
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(padding);
    }];
    view2.backgroundColor = [UIColor greenColor];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view1).offset(10);
        make.left.mas_equalTo(view1).offset(10);
        make.right.mas_equalTo(view1).offset(-10);
        make.height.mas_equalTo(100);
        
    }];
    view3.backgroundColor = [UIColor purpleColor];
    [view2 addSubview:  view3];
    [view3  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(view2);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
