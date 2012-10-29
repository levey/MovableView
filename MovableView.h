//
//  MovableView.h
//
//  Created by Levey on 10/29/12.
//  Copyright (c) 2012 slyfairy.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    MovableViewDirectionLeft = 0,
    MovableViewDirectionRight = 1,
    MovableViewDirectionUp = 2,
    MovableViewDirectionDown = 3
} MovableViewDirection;

@interface MovableView : UIView

@property (nonatomic) MovableViewDirection direction;
@property (nonatomic) float distance;
@property (nonatomic) BOOL moved;

- (void)moveBackward:(BOOL)backward;

@end
