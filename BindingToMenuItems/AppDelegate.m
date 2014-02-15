//
//  AppDelegate.m
//  BindingToMenuItems
//
//  Created by Daniel Farrell on 14/02/2014.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (id)init
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    self = [super init];
    if (self) {
        _songs = [[NSMutableArray alloc] init];
        NSMutableDictionary *song1 = [NSMutableDictionary dictionaryWithDictionary:@{@"title" : @"Back in the USSR"}];
        NSMutableDictionary *song2 = [NSMutableDictionary dictionaryWithDictionary:@{@"title" : @"Yellow Submarine"}];
        
        [_songs addObjectsFromArray:@[song1, song2]];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    // Insert code here to initialize your application
}


- (IBAction)addNewSong:(id)sender {
    NSString *newSong = self.songTextField.stringValue;
    NSInteger index = self.indexTextField.integerValue;
    
    /* Here I want the array controller to
       create a new NSMutableDictionary
       and set the title key with the new song. */
    [[self.songs mutableArrayValueForKey:@"title"] insertObject:newSong atIndex:index];
}

@end

