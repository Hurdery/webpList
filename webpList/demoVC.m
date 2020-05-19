//
//  demoVC.m
//  webpList
//
//  Created by admin on 2020/5/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "demoVC.h"
#import "webpL.framework/Headers/MDWebImageView.h"
#import "gifListVC.h"

@interface demoVC ()

@property (weak, nonatomic) IBOutlet MDWebImageView *mdImage;
@property (weak, nonatomic) IBOutlet MDWebImageView *mdImage1;

@end

@implementation demoVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self.mdImage md_setCommonImageWithURL:[NSURL URLWithString:@"http://www.downxia.com/uploadfiles/2017/0516/20170516022418394.jpg"] completed:^(UIImage * _Nullable image, NSError * _Nullable error) {
    self.mdImage.image = image;
    }];

    [self.mdImage1 md_setWebPImageWithURL:[NSURL URLWithString:@"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200410ABRU4YNPI.webp"] progress:^(CGFloat progress) {
     }  completed:^(UIImage * _Nullable image, NSError * _Nullable error) {
         NSLog(@"completed===%@",image);
         [self.mdImage1 setImage: image];
    }];

}

- (IBAction)qinreAction:(id)sender {
    
      gifListVC *vc = [gifListVC new];
      vc.modalPresentationStyle = UIModalPresentationOverFullScreen;
      [self presentViewController:vc animated:YES completion:nil];
}

@end
