//
//  AppDelegate.m
//  NSScrollVIewTest
//
//  Created by levilai on 2019/9/19.
//  Copyright © 2019 levilai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSScrollView *scrollView;

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    /* 该图片事先拖入了.xcassets中 */
    NSImage *deerImage = [NSImage imageNamed:@"deer"];
    /* scorllView的bounds默认(0,0,frame.width,frame.height) */
    NSImageView *imageView = [[NSImageView alloc] initWithFrame:self.scrollView.bounds];
    imageView.image = deerImage;
    [imageView setFrameSize:deerImage.size];
    self.scrollView.documentView = imageView;

    /**
     *  前面设置imageView的frame时，origin为(0, 0)，显示时会先显示左下角内容，
     *  不符合习惯，所以计算其左上角显示的点，利用scrollView的api滚动到对应位置。
     */
    NSPoint topleftPoint = NSMakePoint(0., imageView.frame.size.height - self.scrollView.contentView.frame.size.height);
    [self.scrollView.contentView scrollToPoint:topleftPoint];
}

/* 在这里修改函数内容 */
- (IBAction)onButtonClicked:(id)sender {
    NSRect rect = self.scrollView.documentView.bounds;
    rect.origin.x += 50;
    rect.size.width *= 2;
    self.scrollView.documentView.bounds = rect;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
