//
//  AppDelegate.m
//  coordinateTrainForBounds
//
//  Created by levilai on 2019/9/18.
//  Copyright © 2019 levilai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    NSView *redView = [[NSView alloc] initWithFrame:NSMakeRect(100, 120, 250, 200)];
    redView.wantsLayer = YES;
    [redView.layer setBackgroundColor:[NSColor redColor].CGColor];
    [[self.window contentView] addSubview:redView];

    NSView *orangeView = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 100, 100)];
    orangeView.wantsLayer = YES;
    [orangeView.layer setBackgroundColor:[NSColor orangeColor].CGColor];
    [redView addSubview:orangeView];
    
    /* 修改父视图的bounds的origin */
     redView.bounds = NSMakeRect(0, 0, 200, 150);
        NSLog(@"%@", NSStringFromRect(orangeView.frame));

}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
