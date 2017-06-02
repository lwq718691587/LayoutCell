//
//  ViewController.m
//  LayoutCell
//
//  Created by 刘伟强 on 2017/6/1.
//  Copyright © 2017年 刘伟强. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import <UITableView+FDTemplateLayoutCell.h>
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *dataArr;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.dataArr = @[@"1hjlkhkljhhjhljhkhjkhjhjkhkjkljkhjkhhjhjjhkjhkjhljkhkjhkjhjhkjhlkjhkj",@"2",@"3",@"垃圾艾克的福利卡即可劳动法绝地反击阿了解到发送垃圾",@"垃圾艾克的福利卡即可劳动法绝地反击阿了解到发送垃圾",@"垃圾艾克的福利卡即可劳动法绝地反击阿了解到发垃圾",@"垃圾艾克阿了解到发送可劳动法绝地反击阿了解到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发到发"];
    [self createTableView];
    // Do any additional setup after loading the view, typically from a nib.
}

//创建tableView
-(void)createTableView
{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource =self;
    self.tableView.backgroundColor=[UIColor clearColor];
    
    //cell分割线的风格
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"MyTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:PickViewCell];
    [self.view addSubview:self.tableView];
}


//设置row的个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}


static NSString *PickViewCell=@"PickViewCell";
//设置cell的内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:PickViewCell];
    cell.myTextLabel.text = self.dataArr[indexPath.row];
    cell.myTextLabel.backgroundColor = [UIColor redColor];
    return cell;
}
//设置cell的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [tableView fd_heightForCellWithIdentifier:PickViewCell cacheByIndexPath:indexPath configuration:^(MyTableViewCell * cell) {
        cell.myTextLabel.text = self.dataArr[indexPath.row];
    }];

}


@end
