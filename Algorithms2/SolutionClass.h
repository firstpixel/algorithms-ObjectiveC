//
//  SolutionClass.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/26/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SolutionClass:NSObject{
}
/* method declaration */
-(NSNumber*)getMinPrice:(NSNumber*) requiredSeats joinArg2:(NSArray*) seatPrices;
-(NSNumber*)solve:(NSArray*) input;

-(NSString*)isWeird:(int)N ;
@end
