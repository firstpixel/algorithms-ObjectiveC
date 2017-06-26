//
//  ArrayTest.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayTest : NSObject
{
    NSMutableArray* arrayShift;

}
@property (nonatomic, readwrite)NSMutableArray* arrayShift;

-(void)initArrayTest;

-(NSArray*)shiftLeft:(int)k;
-(NSArray*)shiftRight:(int)k;

-(void)rotateArrayLeft:(NSArray*)array withPositions:(int)k;

@end
