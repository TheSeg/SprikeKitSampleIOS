//
//  MyScene.m
//  SprikeKitSampleIOS
//
//  Created by John Seggerson on 10/8/13.
//  Copyright (c) 2013 Space Between Studios. All rights reserved.
//

#import "MyScene.h"

// 1
@interface MyScene ()
@property (nonatomic) SKSpriteNode * player;
@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        // 2
        NSLog(@"Size: %@",NSStringFromCGSize(size));
        
        // 3
        self.backgroundColor = [SKColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.0];
        
        // 4
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"player"];
        self.player.position = CGPointMake(self.player.size.width/2, self.frame.size.height/2);
        [self addChild:self.player];
    }
    return self;
}

@end
