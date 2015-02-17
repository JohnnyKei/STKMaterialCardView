//
//  STKMaterialCardView.m
//  STKMaterialCardView
//
//  Created by kei on 2015/02/18.
//  Copyright (c) 2015年 kei. All rights reserved.
//

#import "STKMaterialCardView.h"

@interface STKMaterialCardView ()

@property (nonatomic, strong)CALayer *topShadow;
@property (nonatomic, strong)CALayer *bottomShadow;
@property (nonatomic, strong)CALayer *visibleLayer;

@end

@implementation STKMaterialCardView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initializeShadows];
    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        [self initializeShadows];
    }
    return self;
}

- (void)initializeShadows{
    // initalize 2 shadow
    _topShadow = [CALayer layer];
    _topShadow.frame = self.bounds;
    _topShadow.shadowColor = UIColor.blackColor.CGColor;
    _topShadow.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    
    _bottomShadow = [CALayer layer];
    _bottomShadow.frame = self.bounds;
    _bottomShadow.shadowColor = UIColor.blackColor.CGColor;
    _bottomShadow.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    _bottomShadow.bounds = self.bounds;
    
    self.zDepth = 1;
    
    _visibleLayer = [CALayer layer];
    _visibleLayer.frame = self.bounds;
    
    [self.layer addSublayer:_topShadow];
    [self.layer addSublayer:_bottomShadow];
    [self.layer addSublayer:_visibleLayer];
    
    self.backgroundColor = UIColor.whiteColor;
    
    self.layer.cornerRadius = 2.0;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor{
    [super setBackgroundColor:backgroundColor];
    _visibleLayer.backgroundColor = backgroundColor.CGColor;
}


- (void)setZDepth:(MaterialZDepth)zDepth{
    _zDepth = zDepth;
    
    if (_zDepth == MaterialZDepth1) {
        _topShadow.shadowOpacity = 0.12;
        _topShadow.shadowRadius = 1.5;
        _topShadow.shadowOffset = (CGSize){0,1};
        
        _bottomShadow.shadowOpacity = 0.24;
        _bottomShadow.shadowRadius = 1.0;
        _bottomShadow.shadowOffset = (CGSize){0,1};
        
    }else if (_zDepth == MaterialZDepth2){
        _topShadow.shadowOpacity = 0.16;
        _topShadow.shadowRadius = 3.0;
        _topShadow.shadowOffset = (CGSize){0,3};
        
        _bottomShadow.shadowOpacity = 0.23;
        _bottomShadow.shadowRadius = 3.0;
        _bottomShadow.shadowOffset = (CGSize){0,1};
        
        
    }else if (_zDepth == MaterialZDepth3){
        _topShadow.shadowOpacity = 0.23;
        _topShadow.shadowRadius = 10.0;
        _topShadow.shadowOffset = (CGSize){0,10};
        
        _bottomShadow.shadowOpacity = 0.12;
        _bottomShadow.shadowRadius = 3.0;
        _bottomShadow.shadowOffset = (CGSize){0,1};
        
    }else if (_zDepth == MaterialZDepth4){
        _topShadow.shadowOpacity = 0.22;
        _topShadow.shadowRadius = 14.0;
        _topShadow.shadowOffset = (CGSize){0,14};
        
        _bottomShadow.shadowOpacity = 0.12;
        _bottomShadow.shadowRadius = 5.0;
        _bottomShadow.shadowOffset = (CGSize){0,1};
        
    }else if (_zDepth == MaterialZDepth5){
        _topShadow.shadowOpacity = 0.30;
        _topShadow.shadowRadius = 19.0;
        _topShadow.shadowOffset = (CGSize){0,19};
        
        _bottomShadow.shadowOpacity = 0.22;
        _bottomShadow.shadowRadius = 6.0;
        _bottomShadow.shadowOffset = (CGSize){0,1};
        
    }else{
        _topShadow.shadowOpacity = 0.30;
        _topShadow.shadowRadius = 19.0;
        _topShadow.shadowOffset = (CGSize){0,19};
        
        _bottomShadow.shadowOpacity = 0.22;
        _bottomShadow.shadowRadius = 6.0;
        _bottomShadow.shadowOffset = (CGSize){0,1};
    }
    
    
    
}

@end
