//
//  TestsObjectTest.m
//  TestOfTest
//
//  Created by Robert Łabuś on 18.09.2015.
//  Copyright (c) 2015 Robert Łabuś. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TestsObject.h"
@interface TestsObjectTest : XCTestCase

@property (nonatomic,retain) TestsObject * objectAtTest;
@end

@implementation TestsObjectTest

- (void)setUp {
    [super setUp];
    self.objectAtTest = [[TestsObject alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetOne {
    // This is an example of a functional test case.
    [self measureBlock:^{
        int result = [self.objectAtTest getOne];
        XCTAssertEqual(1,result,@"Shoudl get one");
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        int result = [self.objectAtTest getTwo];
        XCTAssertEqual(2,result,@"Shoudl get two");
        }];
}

@end
