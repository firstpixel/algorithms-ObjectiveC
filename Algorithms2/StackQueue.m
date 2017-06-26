//
//  StackQueue.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackQueue.h"



@implementation StackQueue

@synthesize myQueueArray, myStackArray;

- (void)initCollectionTest {
    // Do any additional setup after loading the view, typically from a nib.
    myQueueArray = [[NSMutableArray alloc] initWithObjects:@1,@2,@3,nil];
    
    NSLog(@"QUEUE :%@",myQueueArray);
    
    [self enqueue:@7];
    NSLog(@"QUEUE :%@",myQueueArray);
    
    [self dequeue];
    [self dequeue];
    [self dequeue];
   
    NSLog(@"QUEUE :%@ %lu",myQueueArray, (unsigned long)myQueueArray.count);
    
    [self dequeue];
    [self dequeue];
    
    myStackArray = [[NSMutableArray alloc] initWithObjects:@1,@2,@3,nil];
    
    NSLog(@"STACK :%@",myStackArray);
    
    [self add:@7];
    NSLog(@"STACK :%@",myStackArray);
    
    id removed = [self remove];
   NSLog(@"STACK :%@ %lu, %@",myStackArray, (unsigned long)myStackArray.count , removed);
    
    
}




#pragma stack
-(void)add:(id)num
{
    [myStackArray insertObject:num atIndex:myStackArray.count];
}

-(id)remove
{
    id myObj = [myStackArray objectAtIndex:myStackArray.count-1];
    [myStackArray removeObjectAtIndex:myStackArray.count-1];
    return myObj;
}




#pragma queue
-(void)enqueue:(id)num
{
    [myQueueArray addObject:num];
}

-(id)dequeue
{
    
    id myObj = 0;
    // Process elements in the queue in a FIFO manner
    if ([myQueueArray count]>0)
    {
        myObj = [myQueueArray objectAtIndex:0];
        [myQueueArray removeObjectAtIndex:0];
    }else{
        NSLog(@"empty queue!");
    }
    return myObj;
}


@end
