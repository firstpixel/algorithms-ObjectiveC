//
//  DijkstraEdge.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/23/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "DijkstraEdge.h"

@implementation DijkstraEdge
@synthesize fromNodeIndex, toNodeIndex, length;

-(id)initEdgeFromNodeIndex:(int)_fromNodeIndex toNodeIndex:(int)_toNodeIndex length:(int)_length
{
    self = [super init];
    if(self != nil){
        self.fromNodeIndex = _fromNodeIndex;
        self.toNodeIndex = _toNodeIndex;
        self.length = _length;
    
    }
    return self;
}

//determines the neighbouring node of the supplied node, base on the two nodes connected by this edge
-(int)getNeighbourIndex:(int)_nodeIndex
{
    if(fromNodeIndex == _nodeIndex) {
        return toNodeIndex;
    }else{
        return fromNodeIndex;
    }
}


@end
