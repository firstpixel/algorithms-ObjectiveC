//
//  DijkstraGraph.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/23/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "DijkstraGraph.h"
#import "DijkstraNode.h"
#import "DijkstraEdge.h"

@implementation DijkstraGraph
@synthesize nodes,noOfEdges,noOfNodes,edges,source;

-(id)initGraphWithEdges:(NSMutableArray* __nonnull) edgesArray{
    self = [super init];
    if(self!=nil){
        self.edges = [NSMutableArray arrayWithArray:edgesArray];
        self.noOfNodes = [self calculateNoOfNodes: edgesArray];
    
        self.nodes = [[NSMutableArray alloc] initWithCapacity:self.noOfNodes];
        for(int n = 0; n < self.noOfNodes; n++)
        {
            DijkstraNode* node = [[DijkstraNode alloc] init];
            [self.nodes addObject:node];
        }
    
        self.noOfEdges = (int)edges.count;
        for(int edgeToAdd = 0; edgeToAdd < self.noOfEdges; edgeToAdd++)
        {
            DijkstraEdge* edge = (DijkstraEdge*)[edges objectAtIndex:edgeToAdd];
            
            int fromIndex=[edge fromNodeIndex];
            int toIndex=[edge toNodeIndex];
            
            DijkstraNode* nodeFrom = (DijkstraNode*)[nodes objectAtIndex:fromIndex];
            NSMutableArray* edgesFrom = [nodeFrom getEdges];
            [edgesFrom addObject:edge];
            //[nodeFrom setEdges:edgesFrom];
            DijkstraNode* nodeTo = (DijkstraNode*)[nodes objectAtIndex:toIndex];
            NSMutableArray* edgesTo = [nodeTo getEdges];
            [edgesTo addObject:edge];
            //[nodeTo setEdges:edgesTo];
        }
    }
    return self;
}

-(int)calculateNoOfNodes:(NSMutableArray*)edgesArray{
   int noOfNodess = 0;
    for(DijkstraEdge *e in self.edges)
    {
        if(e.toNodeIndex > noOfNodess)
            noOfNodess = e.toNodeIndex;
        if(e.fromNodeIndex > noOfNodess)
            noOfNodess = e.fromNodeIndex;
        
    }
    noOfNodess++;
    return noOfNodess;
}


-(void)calculateShortestDistance{
    [self calculateShortestDistanceFromSource:0];
}


-(void)calculateShortestDistanceFromSource:(int)_source{
    source = _source;
    [((DijkstraNode*)[self.nodes objectAtIndex:source]) setDistanceFromSource:0];
    int nextNode = source;
    
    //visit every node
    for(int i = 0; i < self.nodes.count; i++)
    {
        //loop around the edges of current node
        NSMutableArray* currentNodeEdges = [[self.nodes objectAtIndex:nextNode] getEdges];
        
        for(int joinedEdge = 0; joinedEdge < currentNodeEdges.count; joinedEdge++)
        {
            int neighboutIndex = (int)[[currentNodeEdges objectAtIndex:joinedEdge] getNeighbourIndex:nextNode];

            //only if not visited
            if(![[self.nodes objectAtIndex:neighboutIndex] isVisited])
            {
                int tentative = [[self.nodes objectAtIndex:nextNode] distanceFromSource] + ((DijkstraEdge*)[currentNodeEdges objectAtIndex:joinedEdge]).length;
                
                if(tentative < [[nodes objectAtIndex:neighboutIndex] distanceFromSource])
                {
                    [[nodes objectAtIndex:neighboutIndex] setDistanceFromSource:tentative];
                }
            }
        }
        //all neighbours checked so node visited
        [[nodes objectAtIndex:nextNode] setVisited:YES];
        nextNode = [self getNodeShortestDistance];
    }
}


-(int)getNodeShortestDistance
{
    int storedNodeIndex = 0;
    int storedDist = INT_MAX;
    
    for(int i = 0; i < nodes.count; i++)
    {
        int currentDist = [[nodes objectAtIndex:i] distanceFromSource];
        
        if(![[nodes objectAtIndex:i] isVisited] && currentDist < storedDist)
        {
            storedDist = currentDist;
            storedNodeIndex = i;
        }
    }
    return storedNodeIndex;
    
}



-(void)printResult{
    NSMutableString *output = [NSMutableString stringWithFormat:@"Number of nodes = %i",  self.noOfNodes];
    [output appendFormat:@"\nNumber of edges = %i" , self.noOfEdges];
    
    for(int i = 0; i < self.nodes.count; i++)
    {
             [output appendFormat:@"\nThe shortest distance from node %i to node %i is %i",self.source, i, [[self.nodes objectAtIndex:i] distanceFromSource] ];

    }
    NSLog(@" %@",output);

}


@end
