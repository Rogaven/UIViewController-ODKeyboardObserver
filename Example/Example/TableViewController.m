//
//  TableViewController.m
//  Example
//
//  Created by Alex Nazaroff on 09.02.16.
//  Copyright © 2016 Alex Nazaroff. All rights reserved.
//

#import "TableViewController.h"
#import "UIView+FrameUtils.h"
#import "UIViewController+ODKeyboardObserver.h"

static CGPoint const kFieldOrigin = (CGPoint){20, 434};
static CGPoint const kAlertButtonOrigin = (CGPoint){20, 216};

@interface TableViewController () {
    IBOutlet UIButton *_alertButton;
    IBOutlet UITextField *_field;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:_alertButton];
    [self.view addSubview:_field];
    
    _alertButton.od_origin = kAlertButtonOrigin;
    _field.od_origin = kFieldOrigin;
}

- (IBAction)hideAction:(id)sender {
    //    [_field resignFirstResponder];
//    self.navigationController.view.backgroundColor = self.view.backgroundColor;

    CGPoint offset = self.tableView.contentOffset;
    offset.y += 20;
    self.tableView.contentOffset = offset;
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
