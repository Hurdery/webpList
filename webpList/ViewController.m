//
//  ViewController.h
//  webpL
//
//  Created by MD on 2020/5/12.
//  Copyright © 2020 CB. All rights reserved.
//

#import "ViewController.h"
#import "demoVC.h"
#import "webpL.framework/Headers/MDWebImageView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *fightBtn = [UIButton buttonWithType:UIButtonTypeCustom];;
    fightBtn.frame = self.view.bounds;
    [fightBtn setTitle:@"打架能拉进感情" forState:0];
    fightBtn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:fightBtn];
    [fightBtn addTarget:self action:@selector(fightAction) forControlEvents:1<<6];

}
- (void)fightAction {
    
    demoVC *vc = [demoVC new];
    vc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
