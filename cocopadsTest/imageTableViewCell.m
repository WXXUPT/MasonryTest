//
//  imageTableViewCell.m
//  cocopadsTest
//
//  Created by 王旭 on 2020/9/11.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "imageTableViewCell.h"
#import "Masonry.h"
@implementation imageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _image1View = [[UIImageView alloc] init];
    _image2View = [[UIImageView alloc] init];
    _image3View = [[UIImageView alloc] init];
    
    [self.contentView addSubview:_image1View];
    [self.contentView addSubview:_image2View];
    [self.contentView addSubview:_image3View];
    
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [_image1View mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.width.equalTo(self.contentView).multipliedBy(0.3);
        make.height.equalTo(self.contentView).multipliedBy(0.9);
    }];
//    [_image1View setImage:[UIImage imageNamed:@"hh1.jpg"]];
    [_image2View mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_image1View.mas_right).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.width.equalTo(self.contentView).multipliedBy(0.3);
        make.height.equalTo(self.contentView).multipliedBy(0.9);
    }];
//    [_image2View setImage:[UIImage imageNamed:@"hh2.jpg"]];
    [_image3View mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_image2View.mas_right).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.width.equalTo(self.contentView).multipliedBy(0.3);
        make.height.equalTo(self.contentView).multipliedBy(0.9);
    }];
}
@end
