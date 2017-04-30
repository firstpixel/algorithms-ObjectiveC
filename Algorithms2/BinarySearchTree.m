//
//  BinarySearchTree.m
//  Algorithms2
//
//  Created by Gil Beyruth on 4/25/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree
@synthesize root, curr;

-(BOOL)checkBST:(Node*)_root withMin:(int)min andMax:(int)max{
    if(_root == nil) return YES;
    
    if(_root.data < min || _root.data > max)
    {
        return NO;
    }
    return [self checkBST:[root left] withMin:min andMax:([_root data] - 1)] && [self checkBST:[_root right] withMin:([_root data] + 1) andMax:max];
}

-(BOOL)checkBST:(Node*)_root{
    return [self checkBST:_root withMin:INT_MIN andMax:INT_MAX];
}


-(Node*)insertNode:(Node*)node withRoot:(Node*)_root
{
    if(_root == nil)
    {  // empty tree - return the insert node
        return node;
    }
    else
    {  // non-empty tree, insert into left or right subtree
        if([node data] > [_root data]) // to the right
        {
            [_root setRight:[self insertNode:node withRoot:[_root right]]];
        }
        if([node data] < [_root data]) //or to the left
        {
            [_root setLeft:[self insertNode:node withRoot:[_root left]]];
        }
        // tree modified if needed, return the root
        return _root;
    }
}

@end
