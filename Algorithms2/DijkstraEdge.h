//
//  DijkstraEdge.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/23/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DijkstraEdge : NSObject
{
}

@property (nonatomic) int fromNodeIndex;
@property (nonatomic) int toNodeIndex;
@property (nonatomic) int length;

-(id)initEdgeFromNodeIndex:(int)fromNodeIndex toNodeIndex:(int)toNodeIndex length:(int)length;
-(int)getNeighbourIndex:(int)nodeIndex;


@end
