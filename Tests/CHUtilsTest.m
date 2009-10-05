//
//  CHUtilsTest.m
//  CHMath
//
//  Created by Dave DeLong on 9/30/09.
//  Copyright 2009 Home. All rights reserved.
//

#import "CHTestUtils.h"

@implementation CHUtilsTest

- (void)test_gcd {
	CHNumber * n = [CHNumber numberWithInteger:39];
	CHNumber * s = [CHNumber numberWithInteger:65];
	
	CHNumber * r = [CHUtils greatestCommonDivisorOf:n and:s];
	STAssertTrue([r integerValue] == 13, @"+[CHUtils greatestCommonDivisorOf:and:] failed (%@)", r);
	
	n = [CHNumber numberWithInteger:17];
	s = [CHNumber numberWithInteger:23];
	r = [CHUtils greatestCommonDivisorOf:n and:s];
	STAssertTrue([r integerValue] == 1, @"+[CHUtils greatestCommonDivisorOf:and:] failed (%@)", r);
}

- (void)test_primesUpTo {
	CHNumber * n = [CHNumber numberWithInteger:43];
	NSArray * p = [[CHUtils primesUpTo:n] valueForKey:@"stringValue"];
	NSArray * expected = [NSArray arrayWithObjects:@"2", @"3", @"5", @"7", @"11", @"13", @"17", @"19", @"23", @"29", @"31", @"37", @"41", nil];
	STAssertTrue([p isEqual:expected], @"+[CHUtils primesUpTo:] failed (%@)", p);
}

@end
