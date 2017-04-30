//
//  SolutionClass.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/26/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "SolutionClass.h"


@implementation SolutionClass
/* method implementation */
-(NSNumber*)getMinPrice:(NSNumber*) requiredSeats joinArg2:(NSArray*) seatPrices {
    
    if(seatPrices.count==0 || [requiredSeats intValue]==0){
        return [NSNumber numberWithInt:-1];
    }
    

    long int currPrice = 0;
    long int cheaperPrice = 0;
    int seatCounter = 1;


    for(NSArray* row in seatPrices){
        for(int i=[requiredSeats intValue]; i<row.count; i++){
            currPrice = 0;
            seatCounter = 1;
            BOOL emptySeat = NO;
            while(seatCounter<=[requiredSeats intValue] && !emptySeat){
                if(seatCounter==0)currPrice=0;
                //NSLog(@"%i ", [row[i-seatCounter] intValue]);
                if( [row[i-seatCounter] intValue] != - 1){
                    currPrice = currPrice + [row[i-seatCounter] intValue];
                }else{
                    currPrice = 0;
                    emptySeat = YES;
                }
                seatCounter++;
  
            }
            NSLog(@"%lu ", currPrice);
            
            if(currPrice!=0 && (cheaperPrice > currPrice || cheaperPrice==0)){
                cheaperPrice = currPrice;
            }
        }
    }
    cheaperPrice =  cheaperPrice<=0?-1:cheaperPrice;
    return [NSNumber numberWithLong:cheaperPrice];
}

/*
-(NSNumber*)solve:(NSArray*) input {
    
    int change = 0;
    BOOL checkSimpleAnagram = NO;
    NSString* lineString1;
    NSString* lineString2;
    for(int i=0; i<input.count; i++){
        if(((NSArray*)input[i]).count % 1 == 0){
            checkSimpleAnagram = YES;
            
        }
        
        int minComp = ((NSArray*)input[i]).count>2?2:((NSArray*)input[i]).count-1;
        
        for(int j = minComp; j < ((NSArray*)input[i]).count; j++) {
            NSString* s1 = input[i][j];
            NSString* s2 = input[i][j-1];
            if(minComp==2){
                NSString* s3 = input[i][j-2];
                NSLog(@"%@ %@  %@", s1,s2, s3);
                if([s2 isEqualToString:s3] || ![s1 isEqualToString:s3]){
                    change++;
                }
            }else{
                NSLog(@"%@ %@", s1, s2);
            }
            
            if([s1 isEqualToString:s2]){
                change++;
            }
            
            
            
        }
        
        NSLog(@"%@", input[i]);
        
    }
    return [NSNumber numberWithInt:change];
    
}
*/


-(NSString*)isWeird:(int)N {
    if(N % 2 != 0 ||
       (N >= 6 && N <= 20) ){
        NSLog(@"vixi %i", N % 1);
        return @"Weird";
        
    }else if(N % 2 == 0 && ((N >= 2 && N < 5) || N > 20)){
        return @"Not Weird";
        
    }
    return @"Weird";
}



@end
