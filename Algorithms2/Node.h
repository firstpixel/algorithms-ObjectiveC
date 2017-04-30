//
//  Node.h
//  Algorithms2
//
//  Created by Gil Beyruth on 4/25/17.
//  Copyright © 2017 Gil Beyruth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property(nonatomic, retain) int data;
@property(nonatomic, strong) Node * right;
@property(nonatomic, strong) Node * left;

@end
