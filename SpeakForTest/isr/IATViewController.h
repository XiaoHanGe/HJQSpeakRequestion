//
//  IATViewController.h
//  SpeakForTest
//
//  Created by 韩俊强 on 16/4/27.
//  Copyright © 2016年 韩俊强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iflyMSC/iflyMSC.h"
@class PopupView;
@class IFlyDataUploader;
@class IFlySpeechRecognizer;

/**
 语音听写demo
 使用该功能仅仅需要四步
 1.创建识别对象；
 2.设置识别参数；
 3.有选择的实现识别回调；
 4.启动识别
 */
@interface IATViewController : UIViewController<IFlySpeechRecognizerDelegate,IFlyRecognizerViewDelegate,UIActionSheetDelegate>
@property (nonatomic, strong) NSString *pcmFilePath;//音频文件路径
@property (nonatomic, strong) IFlySpeechRecognizer *iFlySpeechRecognizer;//不带界面的识别对象
@property (nonatomic, strong) IFlyRecognizerView *iflyRecognizerView;//带界面的识别对象
@property (nonatomic, strong) IFlyDataUploader *uploader;//数据上传对象
@property (nonatomic, strong) PopupView *popUpView;

@property (weak, nonatomic) IBOutlet UIButton *startRecBtn;
@property (weak, nonatomic) IBOutlet UIButton *stopRecBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelRecBtn;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, strong) NSString * result;
@property (nonatomic, assign) BOOL isCanceled;

@end
