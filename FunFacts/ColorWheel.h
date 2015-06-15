//
//  ColorWheel.h
//  FunFacts
//
//  Created by Brexton Pham on 6/15/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorWheel : NSObject

@property (strong, nonatomic) NSArray *colors;
-(UIColor *)randomColor;
@end
