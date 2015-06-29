//
//  FunFactsTests.m
//  FunFactsTests
//
//  Created by Brexton Pham on 6/14/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "FactBook.h"
#import "ColorWheel.h"

@interface FunFactsTests : XCTestCase

@property (nonatomic) FactBook *factBook;
@property (nonatomic) ColorWheel *colorWheel;

@end

@implementation FunFactsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.factBook = [[FactBook alloc] init];
    self.colorWheel = [[ColorWheel alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.factBook = nil;
    self.colorWheel = nil;
    [super tearDown];
}

- (void) testFactBookNotNil {
    XCTAssertNotNil(self.factBook, @"FactBook model was nil");
}

- (void) testFactsArrayNotNil {
    XCTAssertNotNil(self.factBook.facts, @"Facts array of FactBook was nil");
}

- (void) testRandomFactNotNil {
    NSString *randomFact = [self.factBook randomFact];
    XCTAssertNotNil(randomFact, @"random fact was nil");
}

- (void) testRandomFactIsString {
    id randomFact = [self.factBook randomFact];
    XCTAssertTrue([randomFact isKindOfClass:[NSString class]], @"prediction is of class '%@'", [randomFact class]);
}

- (void) testColorWheelNotNil {
    XCTAssertNotNil(self.colorWheel, @"ColorWheel model was nil");
}

- (void) testColorsArrayNotNil {
    XCTAssertNotNil(self.colorWheel.colors, @"Colors array of ColorWheel was nil");
}

- (void) testRandomColorNotNil {
    UIColor *color = [self.colorWheel randomColor];
    XCTAssertNotNil(color, @"random color was nil");
}

- (void) testRandomColorIsColor {
    id color = [self.colorWheel randomColor];
    XCTAssertTrue([color isKindOfClass:[UIColor class]], @"coloris of class '%@'", [color class]);
}



@end
