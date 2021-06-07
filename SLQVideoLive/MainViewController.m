//
//  ViewController
//
//
//  Created by song on 2021/5/13.
//  Copyright © 2021 song. All rights reserved.

#import "MainViewController.h"
#import "SLQPrecompile.h"
#import "SLQVideoPushViewController.h"
#import "SLQVideoPlayViewController.h"

static NSString *const XXCellId = @"SLQCollectionViewCellId";

@interface MainViewController ()
@end

@implementation MainViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = ThemeColor;
    self.title= @"腾讯云直播";
    self.navigationController.navigationBar.tintColor=[UIColor whiteColor];
     self.navigationController.navigationBar.barTintColor = ThemeColor;
     self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:25]}];
    
    UIBarButtonItem *leftBar = [[UIBarButtonItem alloc ] initWithTitle:@"开直播" style:UIBarButtonItemStylePlain target:self action:@selector(videoPush)];
    UIBarButtonItem *playBtn = [[UIBarButtonItem alloc] initWithTitle:@"看直播" style:UIBarButtonItemStylePlain target:self action:@selector(watchVideo)];
    
    self.navigationItem.rightBarButtonItem = playBtn;

    self.navigationItem.leftBarButtonItem = leftBar;
}

- (void)watchVideo{
    // 没有域名，暂时无法测试
    SLQVideoPlayViewController* vc = [[SLQVideoPlayViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)videoPush{
    
    SLQVideoPushViewController* vc = [[SLQVideoPushViewController alloc] init];

    [self.navigationController pushViewController:vc animated:YES];
}
@end
