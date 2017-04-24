//
//  main.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/3/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackQueue.h"
#import "ArrayTest.h"
#import "StringTest.h"
#import "RectangleTest.h"
#import "ArraySum.h"
#import "AnagramTest.h"
#import "DijkstraNode.h"
#import "DijkstraEdge.h"
#import "DijkstraGraph.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Algorithms starting.");
        
        //StackQueue * stackQueue = [StackQueue new];
        //[stackQueue initCollectionTest];
        
        //ArrayTest *arrayTest = [ArrayTest new];
        //[arrayTest initArrayTest];
        
        //StringTest* stringTest= [StringTest new];
        //[stringTest initStringTest];
        
        //RectangleTest* rectangle = [RectangleTest new];
        //[rectangle initRectangleTest];
        
        //ArraySum* arraySum = [ArraySum new];
        //[arraySum initArrayTest];
        
        //AnagramTest* stringAnagram = [AnagramTest new];
        //[stringAnagram initAnagramTest];
        
        NSMutableArray* edges = [NSMutableArray arrayWithCapacity:14];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:0 toNodeIndex:2 length:1]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:0 toNodeIndex:3 length:4]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:0 toNodeIndex:4 length:2]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:0 toNodeIndex:1 length:3]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:1 toNodeIndex:3 length:2]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:1 toNodeIndex:4 length:3]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:1 toNodeIndex:5 length:1]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:2 toNodeIndex:4 length:1]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:3 toNodeIndex:5 length:4]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:4 toNodeIndex:5 length:2]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:4 toNodeIndex:6 length:7]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:4 toNodeIndex:7 length:2]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:5 toNodeIndex:6 length:4]];
        [edges addObject:[[DijkstraEdge alloc] initEdgeFromNodeIndex:6 toNodeIndex:7 length:5]];
        
        DijkstraGraph* g = [[DijkstraGraph alloc] initGraphWithEdges:edges];
        [g calculateShortestDistanceFromSource:1];
        [g printResult];
        
    }
    return 0;
}
