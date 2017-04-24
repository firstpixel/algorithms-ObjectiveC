//
//  ArraySum.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "ArraySum.h"

@implementation ArraySum
@synthesize arraySum;

-(void)initArrayTest {
    arraySum = [[NSMutableArray alloc] initWithObjects:@18,@11,@21,@28,@31,@38,@40,@55,@60,@62, nil];
    
    [arraySum sortedArrayUsingSelector: @selector(compare:)];
    
    int finalValue = 66;
    int foundSum = 0;
    
    for(int i=0;i<arraySum.count-1;i++){
        for(int j=i+1;j<arraySum.count;j++){
            if(([arraySum[i] intValue] + [arraySum[j] intValue])==finalValue){
               foundSum++;
               break;
            }
        }
        if(foundSum>0){
            break;
        }
    }
    NSLog(@" %i",foundSum);
}

@end
