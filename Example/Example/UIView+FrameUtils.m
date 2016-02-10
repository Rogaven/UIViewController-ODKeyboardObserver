//
//  UIView+FrameUtils.m
//  Example
//
//  Created by Alex Nazaroff on 09.02.16.
//  Copyright © 2016 Alex Nazaroff. All rights reserved.
//

#import "UIView+FrameUtils.h"

@implementation UIView (FrameUtils)

- (void)setOd_origin:(CGPoint)origin {
    CGRect rc = self.frame;
    rc.origin = origin;
    self.frame = rc;
}

- (void)setOd_x:(CGFloat)x {
    CGRect rc = self.frame;
    rc.origin.x = x;
    self.frame = rc;
}

- (void)setOd_y:(CGFloat)y {
    CGRect rc = self.frame;
    rc.origin.y = y;
    self.frame = rc;
}

- (CGPoint)od_origin {
    return self.frame.origin;
}

- (CGFloat)od_x {
    return self.frame.origin.x;
}

- (CGFloat)od_y {
    return self.frame.origin.y;
}

@end
