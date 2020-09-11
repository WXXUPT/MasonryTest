//
//  ViewController.m
//  cocopadsTest
//
//  Created by 王旭 on 2020/9/8.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "imageTableViewCell.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationItem.title = @"图库";
    self.navigationItem.title = @"图库";
    
    _tableView = [[UITableView alloc] init];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(70);
        make.width.equalTo(@([UIScreen mainScreen].bounds.size.width));
        make.height.equalTo(@([UIScreen mainScreen].bounds.size.height));
    }];
    
    [_tableView registerClass:[imageTableViewCell class] forCellReuseIdentifier:@"cell"];
    
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        imageTableViewCell *cell = [[imageTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        if (!cell) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.image1View setImage:[UIImage imageNamed:@"hh1.jpg"]];
        [cell.image2View setImage:[UIImage imageNamed:@"hh2.jpg"]];
        [cell.image3View setImage:[UIImage imageNamed:@"hh3.jpg"]];
        return cell;
    } else if (indexPath.row == 1) {
        imageTableViewCell *cell = [[imageTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        if (!cell) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.image1View setImage:[UIImage imageNamed:@"hh4.jpg"]];
        [cell.image2View setImage:[UIImage imageNamed:@"hh5.jpg"]];
        [cell.image3View setImage:[UIImage imageNamed:@"hh6.jpg"]];
        return cell;
    } else if (indexPath.row == 2) {
        imageTableViewCell *cell = [[imageTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        if (!cell) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.image1View setImage:[UIImage imageNamed:@"hh7.jpg"]];
        [cell.image2View setImage:[UIImage imageNamed:@"hh8.jpg"]];
//        [cell.image3View setImage:[UIImage imageNamed:@"hh3.jpg"]];
        return cell;
    }
    return 0;
}
@end
