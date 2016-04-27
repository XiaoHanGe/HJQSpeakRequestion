//
//  HToolVoice.h
//  SpeakForTest
//
//  Created by 韩俊强 on 16/4/27.
//  Copyright © 2016年 韩俊强. All rights reserved.
//

#import <Foundation/Foundation.h>
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

@interface HToolVoice : NSObject<IFlySpeechRecognizerDelegate,IFlyRecognizerViewDelegate,UIActionSheetDelegate>

@property (nonatomic, strong) NSString *pcmFilePath;//音频文件路径
@property (nonatomic, strong) IFlySpeechRecognizer *iFlySpeechRecognizer;//不带界面的识别对象
@property (nonatomic, strong) IFlyRecognizerView *iflyRecognizerView;//带界面的识别对象
@property (nonatomic, strong) IFlyDataUploader *uploader;//数据上传对象
@property (nonatomic, strong) PopupView *popUpView;
@property (nonatomic, strong) NSString * result;
@property (nonatomic, assign) BOOL isCanceled;
@property (nonatomic, strong) UITextView *textViewString;

// 初始化配置
- (void)startForVoice:(UIView*)view;

/**
 启动听写
 *****/
- (void)startBtnHandler:(UITextField *)textField;

/**
 停止录音
 *****/
- (void)stopBtnHandler:(UITextField *)textField;

/**
 取消听写
 *****/
- (void)cancelBtnHandler:(UITextField *)textField;


@end
