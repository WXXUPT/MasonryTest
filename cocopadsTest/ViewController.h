//
//  ViewController.h
//  cocopadsTest
//
//  Created by 王旭 on 2020/9/8.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
//@property (nonatomic, strong) UINavigationController *navigationController;
@end

