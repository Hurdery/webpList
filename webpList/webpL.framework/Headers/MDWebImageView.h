//
//  MDWebImageView.h
//  webpL
//
//  Created by MD on 2020/5/12.
//  Copyright © 2020 CB. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^mdWebImageDownLoadProgressBlock)(CGFloat progress);
typedef void(^mdWebImageCompletionBlock)(UIImage * _Nullable image, NSError * _Nullable error);

@interface MDWebImageView : UIImageView


/// 加载webp格式
/// @param url <#url description#>
/// @param progressBlock <#progressBlock description#>
/// @param completedBlock <#completedBlock description#>
- (void)md_setWebPImageWithURL:(nonnull NSURL *)url progress:(nonnull mdWebImageDownLoadProgressBlock)progressBlock completed:(nonnull mdWebImageCompletionBlock)completedBlock;



/// 加载正常格式
/// @param url <#url description#>
/// @param completedBlock <#completedBlock description#>
- (void)md_setCommonImageWithURL:(nonnull NSURL *)url completed:(nonnull mdWebImageCompletionBlock)completedBlock;

@end
