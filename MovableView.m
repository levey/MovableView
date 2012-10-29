//
//  MovableView.m
//
//  Created by Levey on 10/29/12.
//  Copyright (c) 2012 slyfairy.com. All rights reserved.
//

#import "MovableView.h"

@implementation MovableView

- (void)moveBackward:(BOOL)backward
{
    if ((backward && !_moved) || (!backward && _moved)) {
        return;
    }
    
    float d = backward ? - _distance : _distance;
    
    [UIView animateWithDuration:.3 animations:^{
        switch (self.direction) {
            case MovableViewDirectionLeft:
                self.frame  = CGRectOffset(self.frame, - d, 0.);
                break;
            case MovableViewDirectionRight:
                self.frame  = CGRectOffset(self.frame, d, 0.);
                break;
            case MovableViewDirectionUp:
                self.frame  = CGRectOffset(self.frame, 0., - d);
                break;
            case MovableViewDirectionDown:
                self.frame  = CGRectOffset(self.frame,  0., d);
                break;
            default:
                break;
        }
    }];
    _moved = !_moved;
}

@end
