//
//  ZHAppDelegate.m
//  softManage
//
//  Created by bejoy on 14/8/25.
//  Copyright (c) 2014年 zeng hui. All rights reserved.
//

#import "ZHAppDelegate.h"
#import "App.h"



@implementation ZHAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"MyDatabase.sqlite"];

    
    
    
    App *app = [[NSUserDefaults standardUserDefaults] objectForKey:@"app"];
    
    self.nameTextField.stringValue = app.name;
}



- (IBAction)addNewSoft:(id)sender {
    
    
    
}

//@property (weak) IBOutlet NSTextField *numberTextField;
//@property (weak) IBOutlet NSTextField *nameTextField;
//@property (weak) IBOutlet NSTextField *dispalyNameTextField;
//@property (weak) IBOutlet NSTextField *versionTextField;
//@property (weak) IBOutlet NSTextField *themIdTextField;


- (IBAction)saveAppInfo:(id)sender {
    

    App *app = [App createEntity];
    
    NSString *string = self.nameTextField.stringValue;
    
    app.name = self.nameTextField.stringValue;
    app.number = self.numberTextField.stringValue;
    app.displayName = self.dispalyNameTextField.stringValue;
    app.version = self.versionTextField.stringValue;
    app.them_id = self.themIdTextField.stringValue;
    
    
    [[NSManagedObjectContext defaultContext] saveToPersistentStoreWithCompletion:nil];
//    app
    
    [[NSUserDefaults standardUserDefaults] setObject:app forKey:@"app"];
    
    
    
    
}
@end
