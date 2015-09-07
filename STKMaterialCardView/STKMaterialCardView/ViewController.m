//
//  ViewController.m
//  STKMaterialCardView
//
//  Created by kei on 2015/02/18.
//  Copyright (c) 2015年 kei. All rights reserved.
//

#import "ViewController.h"
#import "STKMaterialCardView.h"

@interface ViewController ()

@property (nonatomic, strong)STKMaterialCardView *cardView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _cardView = [[STKMaterialCardView alloc]initWithFrame:(CGRect){250,250,50,50}];
    _cardView.zDepth = 1.0;
    [self.view addSubview:_cardView];
    
    for (int i = 1; i<6; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:[NSString stringWithFormat:@"z=%d",i] forState:UIControlStateNormal];
        [button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
        [button setFrame:(CGRect){50*i,300,50,30}];
        [button setTag:i];
        [button addTarget:self action:@selector(changeZDepth:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)changeZDepth:(UIButton *)sender{
    _cardView.zDepth = (MaterialZDepth)sender.tag;
    
    _materialCardView.zDepth = (MaterialZDepth)sender.tag;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
