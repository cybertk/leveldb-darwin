//
//  leveldb_ios_tests.m
//  leveldb-ios-tests
//
//  Created by Quanlong He on 6/8/15.
//  Copyright (c) 2015 com.google. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import <leveldb/leveldb.h>

@interface leveldb_ios_tests : XCTestCase

@end

@implementation leveldb_ios_tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testOpenAndDestoryDB {
    // This is an example of a functional test case.
    leveldb::Options options;
    options.create_if_missing = true;

    leveldb::DB* db = NULL;
    leveldb::Status status = leveldb::DB::Open(options, "test.db", &db);

    XCTAssertTrue(status.ok());

    leveldb::DestroyDB("test.db", leveldb::Options());
    XCTAssertTrue(status.ok());
}

@end
