//
//  ViewController.m
//  ODKeyboardObserver
//
//  Created by Alexey Nazaroff on 24.04.09.
//  Copyright (c) 2009 Alexey Nazaroff. All rights reserved.
//

#import "ViewController.h"
#import "UIView+FrameUtils.h"
#import "UIViewController+ODKeyboardObserver.h"
#import "ODKeyboardObserver.h"

@interface ViewController () {
    IBOutlet UIButton *_alertButton;
    IBOutlet UITextField *_field;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)hideAction:(id)sender {
//    [_field resignFirstResponder];
    
    self.navigationController.view.backgroundColor = self.view.backgroundColor;
    self.view.od_y -= 20;
    NSLog(@"%d kbd", [ODKeyboardObserver sharedInstance].isKeyboardVisible);
}

- (IBAction)alertAction:(id)sender {
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                message:@"message"
                                                         preferredStyle:UIAlertControllerStyleAlert];
    [vc addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                           style:UIAlertActionStyleCancel
                                         handler:nil]];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
