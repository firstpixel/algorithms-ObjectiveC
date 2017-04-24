//
//  AnagramTest.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "AnagramTest.h"

@implementation AnagramTest

@synthesize stringArray;

-(void)initAnagramTest{
    stringArray = [[NSMutableArray alloc] initWithObjects:@"pear",@"dormitory",@"tinsel",@"dirty room",@"hamlet",@"listen",@"silnet",@"amleth", nil];
    NSMutableArray* finalArray = [[NSMutableArray alloc] init];
    NSMutableArray* holderArray = [[NSMutableArray alloc] init];
    int i=0;
    while(stringArray.count){
        NSMutableArray* newArray = [[NSMutableArray alloc] init];

        [newArray addObject:stringArray[i]];
        if(stringArray.count>=2){
            for(int j=1;j<stringArray.count;j++){
                if([self isAnagrams:stringArray[i] ofString:stringArray[j]]){
                    [newArray addObject:stringArray[j]];
                }
            }
        }
        [stringArray removeObjectsInArray:newArray];
        
        [holderArray addObject:[newArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)]];
    }
    
    holderArray = [[NSMutableArray alloc] initWithArray:[holderArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSArray *array1 = (NSArray *)obj1;
        NSArray *array2 = (NSArray *)obj2;
        NSString *num1String = [array1 objectAtIndex:0];
        NSString *num2String = [array2 objectAtIndex:0];
        
        return [num1String compare:num2String];
    }]];
    for(NSArray* eachArray in holderArray){
        NSMutableString* stringHolder = [[NSMutableString alloc] init];
        int stringSize = (int)eachArray.count;
        for(NSString* eachStringArray in eachArray){
            if(stringSize>1){
                [stringHolder appendString:[NSString stringWithFormat:@"%@,",eachStringArray]];
                stringSize--;
            }else{
                [stringHolder appendString:eachStringArray];
            }
        }
        [finalArray addObject:stringHolder];
    }
    
   // return finalArray;
    
    
    NSLog(@"NEW ARRAY %@",finalArray);

}

-(BOOL)isAnagrams:(NSString *)a ofString:(NSString *)b
{
    a = [[[a componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""] lowercaseString];
    b = [[[b componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""] lowercaseString];
    
    if (a.length != b.length)
        return NO;
    
    NSCountedSet *aSet = [[NSCountedSet alloc] init];
    NSCountedSet *bSet = [[NSCountedSet alloc] init];
    
    for (int i = 0; i < a.length; i++)
    {
        [aSet addObject:@([a characterAtIndex:i])];
        [bSet addObject:@([b characterAtIndex:i])];
    }
    
    return [aSet isEqual:bSet];
}

@end
