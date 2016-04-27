//
//  MyViewController.m
//  SpeakForTest
//
//  Created by 韩俊强 on 16/4/27.
//  Copyright © 2016年 韩俊强. All rights reserved.
//

#import "MyViewController.h"
#import "UIButton+CenterImageAndTitle.h"
#import "HToolVoice.h"
#import "ISRDataHelper.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface MyViewController ()
{
    HToolVoice *hVoice; // 初始化类
    NSString *aString;  // 过度拼接字符串
}
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    hVoice = [[HToolVoice alloc]init];
    // 初始化配置
    [hVoice startForVoice:self.view];
    [self configureTopView:_myTextField];
    
    

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

// 自定义辅助视图
- (void)configureTopView:(UITextField*)textField
{
    textField.inputAccessoryView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 50)];
    //自定义的view
    UIView *customView = [[UIView alloc]initWithFrame:CGRectMake(0,0,320,45)];
    customView.backgroundColor = [UIColor lightGrayColor];
    _myTextField.inputAccessoryView = customView;
    
    // 往自定义view中添加各种UI控件
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(kScreenWidth/2 - 45,5,90,45-10)];
    [btn setTitle:@"按住说话" forState:UIControlStateNormal];
    [btn setTitle:@"松开发送" forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(btnClicked)forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(holdDownButtonTouchDown) forControlEvents:UIControlEventTouchDown];
    [btn addTarget:self action:@selector(holdDownButtonTouchUpOutside) forControlEvents:UIControlEventTouchUpOutside];
    [btn addTarget:self action:@selector(holdDownButtonTouchUpInside) forControlEvents:UIControlEventTouchUpInside];
    
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"microphone1"] forState:UIControlStateNormal];
    [btn horizontalCenterImageAndTitle:10.0f];
    [customView addSubview:btn];
}

#pragma mark ------ 关于按钮操作的一些事情-------
- (void)holdDownButtonTouchDown {
    // 开始说话
    [hVoice startBtnHandler:_myTextField];
}

- (void)holdDownButtonTouchUpOutside {
    // 取消录音
    [hVoice cancelBtnHandler:_myTextField];
}

- (void)holdDownButtonTouchUpInside {
    // 完成录音
    [hVoice stopBtnHandler:_myTextField];
    
    _myTextField.text = hVoice.textViewString.text;
    
  
}

// 点击事件
- (void)btnClicked
{
    NSLog(@"11111");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
