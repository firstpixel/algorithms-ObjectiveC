//
//  DijkstraNode.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/23/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DijkstraEdge.h"

@interface DijkstraNode : NSObject

@property (nonatomic)int distanceFromSource;
@property (nonatomic,getter=isVisited) BOOL visited;
@property (nonatomic,strong)NSMutableArray* edges;

-(NSMutableArray*)getEdges;
@end
