//
//  ODKeyboardObserver.m
//  Example
//
//  Created by Alex Nazaroff on 10.02.16.
//  Copyright © 2016 Alex Nazaroff. All rights reserved.
//

#import "ODKeyboardObserver.h"
#import <UIKit/UIKit.h>

@interface ODKeyboardObserver ()
@property (nonatomic, assign, readwrite) BOOL isKeyboardVisible;
@end

@implementation ODKeyboardObserver

+ (instancetype)sharedInstance {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [self new];
    });
    return instance;
}

- (instancetype)init {
    if ((self = [super init])) {
        NSOperationQueue *queue = [NSOperationQueue mainQueue];
        [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidShowNotification
                                                          object:nil
                                                           queue:queue
                                                      usingBlock:^(NSNotification * _Nonnull note) {
            self.isKeyboardVisible = YES;
        }];
        
        [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidHideNotification
                                                          object:nil
                                                           queue:queue
                                                      usingBlock:^(NSNotification * _Nonnull note) {
            self.isKeyboardVisible = NO;
        }];
    }
    
    return self;
}

@end
