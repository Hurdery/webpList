//
//  gifImageCollectionViewCell.m
//  webpList
//
//  Created by admin on 2020/5/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "gifImageCollectionViewCell.h"

@implementation gifImageCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self){
        _imageView = [[MDWebImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:_imageView];
        
        
    }
    return self;
}

- (void)imageUrlStr:(NSString *)urlStr {
    
      __weak __typeof(self) wself = self;
   
    [self.imageView md_setWebPImageWithURL:[NSURL URLWithString:urlStr] progress:^(CGFloat progress) {
        
    } completed:^(UIImage * _Nullable image, NSError * _Nullable error) {
        if(!error) {
            [wself.imageView setImage:image];
        }
    }];
        
}

@end
