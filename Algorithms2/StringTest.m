//
//  StringTest.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "StringTest.h"

@implementation StringTest

@synthesize stringArray,secondArray;
-(void)initStringTest{
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Raymond", @"Nora", @"Daniel", @"Louie", @"Peter", @"Esteban", nil];
    
    secondArray = [[NSMutableArray alloc] initWithArray:stringArray];
    
    [self reorderArray];
    
}

-(void) reorderArray{
    NSString*lastAddedName = @"";
     for(NSString* name in stringArray){
        BOOL isFirstName = YES;
        for(NSString* name2 in secondArray){
            
            NSLog(@"%@ :: %@",name, name2);
            
            if([self getFirstChar:[name uppercaseString]]==[self getLastChar:[name2 uppercaseString]] && ![name isEqualToString:name2]){
                isFirstName = NO;
                break;
            }
        }
        
         
        NSLog(@"%@ : %s", name, isFirstName?"YES":"NO");
         
        if(isFirstName){
            lastAddedName = name;
            [stringArray removeObject:name];
            [secondArray removeAllObjects];
            [secondArray addObject:name];
            break;
        }
    }
    
    for(int i =0; i<stringArray.count; i++){
        if([self getFirstChar:[stringArray[i] uppercaseString]]==[self getLastChar:[lastAddedName  uppercaseString]]){
            lastAddedName = stringArray[i];
            [secondArray addObject:lastAddedName];
            [stringArray removeObjectAtIndex:i];
            i=0;
        }
    
    }
    NSLog(@"%@",secondArray);
    
}

-(char)getFirstChar:(NSString*)name{
    return [name characterAtIndex:0];
}
-(char)getLastChar:(NSString*)name{
    return [name characterAtIndex:name.length-1];
}
@end
