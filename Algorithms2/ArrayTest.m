//
//  ArrayTest.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "ArrayTest.h"

@implementation ArrayTest

@synthesize arrayShift;

-(void)initArrayTest{
    arrayShift = [[NSMutableArray alloc] initWithObjects:@0,@1,@2,@3,@4,nil];
    NSLog(@"ARRAY :%@",arrayShift);
    [self shiftLeft:2];
    NSLog(@"ARRAY LEFT :%@",arrayShift);
    [self shiftRight:3];
    NSLog(@"ARRAY RIGHT:%@",arrayShift);
}



-(NSArray*)shiftLeft:(int)k{
    
    for (int i = k; i > 0; i--) {
        NSObject *obj = [arrayShift lastObject];
        [arrayShift insertObject:obj atIndex:0];
        [arrayShift removeLastObject];
    }
    return arrayShift;
}


-(NSArray*)shiftRight:(int)k{
    int n = (int)arrayShift.count;
    for(int i=0; i<n; i++){
        id obj = [arrayShift objectAtIndex:i];
        [arrayShift insertObject:obj atIndex:((i+k)%n)];
    }
    
    return arrayShift;
}


-(void)rotateArrayLeft:(NSArray*)array withPositions:(int)k {
    
    int n = (int)array.count;
    NSMutableArray* newArray = [NSMutableArray arrayWithArray:array];
    
    for(int i=0; i<n; i++){
        NSNumber* num = [array objectAtIndex:i];
        NSLog(@"%i : %i",(i+n-k)%n, [num intValue]);
        
        [newArray replaceObjectAtIndex:(int)(i+n-k)%n withObject:num];
        
    }
    for(int j=0; j<newArray.count; j++){
        printf("%i ",[[newArray objectAtIndex:j] intValue]);
        NSLog(@"%i",j);
    }
}

@end







