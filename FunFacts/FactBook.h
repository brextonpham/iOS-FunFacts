//
//  FactBook.h
//  FunFacts
//
//  Created by Brexton Pham on 6/15/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject

@property (strong, nonatomic) NSArray *facts;
-(NSString *)randomFact;

@end
