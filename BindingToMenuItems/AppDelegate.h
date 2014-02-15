//
//  AppDelegate.h
//  BindingToMenuItems
//
//  Created by Daniel Farrell on 14/02/2014.
//  Copyright (c) 2014 d. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Book;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

// The data source array
@property (strong) NSMutableArray *songs;

// Text fields for inserting songs
@property (weak) IBOutlet NSTextField *songTextField;
@property (weak) IBOutlet NSTextField *indexTextField;
- (IBAction)addNewSong:(id)sender;


@end
