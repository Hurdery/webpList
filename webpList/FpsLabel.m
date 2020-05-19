//
//  FpsLabel.m
//  webpList
//
//  Created by admin on 2020/5/19.
//  Copyright © 2020 admin. All rights reserved.
//

#import "FpsLabel.h"

@implementation FpsLabel
{
    CADisplayLink *_link;
    NSUInteger _count;
    NSTimeInterval _lastTime;
}

+ (void)setupOnView:(UIView *)view
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    FpsLabel *fpsLabel = [[FpsLabel alloc] initWithFrame:CGRectMake(screenSize.width / 2.0 - 40, screenSize.height - 100, 80, 80)];
    fpsLabel.backgroundColor = [UIColor redColor];
    [fpsLabel start];
    [view addSubview:fpsLabel];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.font=[UIFont boldSystemFontOfSize:12];
        self.textColor=[UIColor colorWithRed:0.33 green:0.84 blue:0.43 alpha:1.00];
        self.backgroundColor=[UIColor clearColor];
        self.textAlignment = NSTextAlignmentCenter;
        
        _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
        [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
        _link.paused = YES;
        
        
        [[NSNotificationCenter defaultCenter] addObserver: self
                                                 selector: @selector(applicationDidBecomeActiveNotification)
                                                     name: UIApplicationDidBecomeActiveNotification
                                                   object: nil];
        
        [[NSNotificationCenter defaultCenter] addObserver: self
                                                 selector: @selector(applicationWillResignActiveNotification)
                                                     name: UIApplicationWillResignActiveNotification
                                                   object: nil];
    }
    return self;
}

- (void)dealloc
{
    [_link invalidate];
    [_link removeFromRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)applicationDidBecomeActiveNotification
{
    [_link setPaused:NO];
}

- (void)applicationWillResignActiveNotification
{
    [_link setPaused:YES];
}

- (void)start
{
    [_link setPaused:NO];
}

- (void)tick:(CADisplayLink *)link
{
    if (_lastTime == 0) {
        _lastTime = link.timestamp;
        return;
    }
    
    _count++;
    NSTimeInterval delta = link.timestamp - _lastTime;
    if (delta < 1) return;
    _lastTime = link.timestamp;
    float fps = _count / delta;
    _count = 0;
    
    NSString *fpsString = [NSString stringWithFormat:@"%zd fps",(int)round(fps)];
    self.textColor = [UIColor blueColor];
    self.font = [UIFont boldSystemFontOfSize:20];
    self.text = fpsString;
}

@end
