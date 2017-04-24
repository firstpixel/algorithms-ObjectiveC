//
//  StringTest.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringTest : NSObject
{
    NSMutableArray*stringArray;
    NSMutableArray*secondArray;
}

@property(nonatomic,readwrite) NSMutableArray*stringArray;
@property(nonatomic,retain) NSMutableArray*secondArray;

-(void)initStringTest;
-(void)reorderArray;

@end
