//
//  ViewController.m
//  GItSend
//
//  Created by LeeZhe on 15/4/16.
//  Copyright (c) 2015年 LeeZhe. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"MyTableViewCell" bundle:nil] forCellReuseIdentifier:@"identify"];
    [self.view addSubview:_tableView];
    
    
}
- (UITableView *)tableView
{
    if (!_tableView) {
        self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    }
    return _tableView;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identify" forIndexPath:indexPath];
    // 第二种
//    MyTableViewCell *cellOne = [tableView dequeueReusableCellWithIdentifier:@"identify"];
//    if (!cell) {
//        cell = (MyTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"MyTabelViewCell" owner:self options:nil]lastObject];
//    }
  
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
