//
//  ZHAppDelegate.h
//  softManage
//
//  Created by bejoy on 14/8/25.
//  Copyright (c) 2014年 zeng hui. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ZHAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *numberTextField;
@property (weak) IBOutlet NSTextField *nameTextField;
@property (weak) IBOutlet NSTextField *dispalyNameTextField;
@property (weak) IBOutlet NSTextField *versionTextField;
@property (weak) IBOutlet NSTextField *themIdTextField;

@end
