//
//  RectangleTest.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "RectangleTest.h"

@implementation RectangleTest
@synthesize rectangleArray;

-(void) initRectangleTest {
    rectangleArray = [[NSMutableArray alloc] initWithObjects:@"36 30 36 30",@"15 15 15 15",@"46 96 90 100",@"86 86 86 86",@"100 200 100 200",@"-100 200 -100 200", nil];
    int squareCount = 0;
    int rectangleCount = 0;
    int polyCount = 0;
    
    for(NSString* rectangle in rectangleArray){
       NSArray *listSides = [rectangle componentsSeparatedByString:@" "];
        if(0 >= MIN(listSides[0],listSides[1]) && 0>=MIN(listSides[2],listSides[3])){
             polyCount++;
        }else
        if(listSides[0]==listSides[1] && listSides[1]==listSides[2] && listSides[2]==listSides[3]){
            squareCount++;
        }else
        if(listSides[0]==listSides[2] && listSides[1]==listSides[3] && listSides[0]!=listSides[1]){
            rectangleCount++;
        }else{
            polyCount++;
        }
        
    
    }
    
    NSLog(@"%i %i %i",squareCount,rectangleCount,polyCount);

}

@end
