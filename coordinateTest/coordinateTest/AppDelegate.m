//
//  AppDelegate.m
//  coordinateTest
//
//  Created by levilai on 2019/9/18.
//  Copyright © 2019 levilai. All rights reserved.
//

#import "AppDelegate.h"

#import "FlippedView.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
//    [[self.window contentView] isFlipped] = YES;
    
    NSView *blueView = [[FlippedView alloc] initWithFrame:NSMakeRect(30, 50, 250, 300)];
    blueView.wantsLayer = YES;
    [blueView.layer setBackgroundColor:[NSColor blueColor].CGColor];
    [[self.window contentView] addSubview:blueView];

    NSView *redView = [[NSView alloc] initWithFrame:NSMakeRect(20, 20, 50, 100)];
    redView.wantsLayer = YES;
    [redView.layer setBackgroundColor:[NSColor redColor].CGColor];
    [blueView addSubview:redView];
    
    NSView *orangeView = [[NSView alloc] initWithFrame:NSMakeRect(20, 20, 20, 20)];
    orangeView.wantsLayer = YES;
    [orangeView.layer setBackgroundColor:[NSColor orangeColor].CGColor];
    [redView addSubview:orangeView];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}



@end
