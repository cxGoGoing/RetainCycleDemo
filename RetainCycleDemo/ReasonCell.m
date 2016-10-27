//
//  ReasonCell.m
//  RetainCycleDemo
//
//  Created by chengxun on 16/10/27.
//  Copyright © 2016年 chengxun. All rights reserved.
//

#import "ReasonCell.h"
#import <PureLayout.h>
@interface ReasonCell()
@property (nonatomic,weak)UILabel * reasonLabel;
@end
@implementation ReasonCell
- (UILabel*)reasonLabel{
    if(!_reasonLabel){
        UILabel * reasonLabel = [[UILabel alloc]init];
        [self.contentView addSubview:(_reasonLabel = reasonLabel)];
    }
    return _reasonLabel;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self.reasonLabel autoPinEdgesToSuperviewEdges];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    !self.didTouch?:self.didTouch(self.indexPath);
}

- (void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    self.reasonLabel.text = [NSString stringWithFormat:@"%@",indexPath];
}

@end
