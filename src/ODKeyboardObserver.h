//
//  ODKeyboardObserver.h
//  Example
//
//  Created by Alex Nazaroff on 10.02.16.
//  Copyright © 2016 Alex Nazaroff. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 
 * Signleton object observing keyboard state changes
 */
@interface ODKeyboardObserver : NSObject

+ (instancetype)sharedInstance;

/** Current keyboard state */
@property (nonatomic, assign, readonly) BOOL isKeyboardVisible;


@end
