//
//  FpsLabel.h
//  webpList
//
//  Created by admin on 2020/5/19.
//  Copyright © 2020 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FpsLabel : UILabel
+ (void)setupOnView:(UIView *)view;
- (void)start;
@end

NS_ASSUME_NONNULL_END
