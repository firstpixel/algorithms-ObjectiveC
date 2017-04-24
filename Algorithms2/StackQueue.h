//
//  StackQueue.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#ifndef StackQueue_h
#define StackQueue_h


#endif /* StackQueue_h */

@interface StackQueue : NSObject
{
    NSMutableArray* myQueueArray;
    NSMutableArray* myStackArray;
}

@property (nonatomic,retain)NSMutableArray* myQueueArray;
@property (nonatomic,retain)NSMutableArray* myStackArray;

- (void)initCollectionTest;

@end
