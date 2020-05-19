//
//  gifImageCollectionViewCell.h
//  webpList
//
//  Created by admin on 2020/5/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "webpL.framework/Headers/MDWebImageView.h"
NS_ASSUME_NONNULL_BEGIN

@interface gifImageCollectionViewCell : UICollectionViewCell
@property(nonatomic,strong)MDWebImageView *imageView;
- (void)imageUrlStr:(NSString *)urlStr;
@end

NS_ASSUME_NONNULL_END
