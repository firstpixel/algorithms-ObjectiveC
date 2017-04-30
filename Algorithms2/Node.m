//
//  Node.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/25/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "Node.h"

@implementation Node
@synthesize data, left, right;
-(id)init{
    self = [super init];
    if(self!=nil){
        self.data = -1;
        self.left = nil;
        self.right = nil;
    }
    return self;
}

-(id)initWithData:(int)_data{
    self.data = _data;
}


@end
