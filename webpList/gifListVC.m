//
//  gifListVC.m
//  webpList
//
//  Created by admin on 2020/5/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "gifListVC.h"
#import "gifImageCollectionViewCell.h"
#import "FpsLabel.h"

@interface gifListVC ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong)NSMutableArray *webpArray;
@end

@implementation gifListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self loadUI];
}
- (void)loadUI {
    
   UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];

    UICollectionView *collectionV = [[UICollectionView
                                      alloc]initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    flowLayout.itemSize = CGSizeMake(self.view.frame.size.width / 2 - 10, 200);
    collectionV.delegate = self;
    collectionV.dataSource = self;
    collectionV.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:collectionV];
    [collectionV registerClass:[gifImageCollectionViewCell class] forCellWithReuseIdentifier:@"gifImageCollectionViewCell"];
    
    [FpsLabel setupOnView:self.view];
    

}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.webpArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    gifImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"gifImageCollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    [cell imageUrlStr:self.webpArray[indexPath.item]];
    
    return cell;
}
- (void)initData {
    
    self.webpArray = [[NSMutableArray alloc] initWithObjects:@"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200410QMKU2JMEB.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200409TX49NEUKZ.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200410LDKQZKQ94.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT2004092IBO9X6BG.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200413FD93QH6X2.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200414V82JG58HP.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200428OCJTR7OFN.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200410ABRU4YNPI.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200413BNK32Q409.webp",
             @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200428675LL30LT.webp",
                      @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200429MLIQH1BIR.webp", @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200429C54SWQ9HB.webp",
                               @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT2004108HF43N2SY.webp",
                               @"https://phantom-prod-oss.oss-cn-shanghai.aliyuncs.com/phantom/ugc/webp/PRODDT200429ZQ47YZWJD.webp",nil];
    
    
}


@end
