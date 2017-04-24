//
//  DijkstraNode.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/23/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "DijkstraNode.h"

@implementation DijkstraNode
@synthesize distanceFromSource, visited, edges;

-(id)init{
    self=[super init];
    if(self!=nil){
        self.visited = NO;
        self.edges = [NSMutableArray array];
        self.distanceFromSource = INT_MAX;
    }
    return self;
}

-(NSMutableArray*)getEdges{
    return edges;
}
@end
