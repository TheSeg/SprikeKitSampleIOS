//
//  GameOverScene.m
//  SprikeKitSampleIOS
//
//  Created by John Seggerson on 10/9/13.
//  Copyright (c) 2013 Space Between Studios. All rights reserved.
//

#import "GameOverScene.h"
#import "MyScene.h"

@implementation GameOverScene

-(id)initWithSize:(CGSize)size won:(BOOL)won {
    if ( self = [super initWithSize:size] ) {
        // Set background color
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        // Set message.
        NSString * message;
        if ( won ) {
            message = @"You Won!";
        } else {
            message = @"You Lost! :[";
        }
        
        // Paint message
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        label.text = message;
        label.fontSize = 40;
        label.fontColor = [SKColor blackColor];
        label.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:label];
        
        // Run the action!
        [self runAction:
            [SKAction sequence:@[
                [SKAction waitForDuration:3.0],
                [SKAction runBlock:^{
                    SKTransition *reveal = [SKTransition flipHorizontalWithDuration:5];
                    SKScene * myScene = [[MyScene alloc] initWithSize:self.size];
                    [self.view presentScene:myScene transition:reveal];
                }]
            ]]
         ];
    }
    return self;
}
@end
