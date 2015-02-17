//
//  STKMaterialCardView.h
//  STKMaterialCardView
//
//  Created by kei on 2015/02/18.
//  Copyright (c) 2015年 kei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    MaterialZDepth1 = 1,
    MaterialZDepth2,
    MaterialZDepth3,
    MaterialZDepth4,
    MaterialZDepth5,
}MaterialZDepth;

@interface STKMaterialCardView : UIView

@property (nonatomic, assign)MaterialZDepth zDepth;

@end
