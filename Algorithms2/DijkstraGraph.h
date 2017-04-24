//
//  DijkstraGraph.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/23/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DijkstraGraph : NSObject
{
}

@property(nonatomic,strong) NSMutableArray* nodes;
@property(nonatomic) int noOfNodes;
@property(nonatomic,strong) NSMutableArray* edges;
@property(nonatomic) int noOfEdges;

@property(nonatomic) int source;


-(id)initGraphWithEdges:(NSMutableArray*)edgesArray;
-(void)calculateShortestDistance;
-(void)calculateShortestDistanceFromSource:(int)source;
-(void)printResult;
@end
