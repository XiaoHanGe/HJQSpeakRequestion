//
//  ViewController.m
//  SpeakForTest
//
//  Created by 韩俊强 on 16/4/26.
//  Copyright © 2016年 韩俊强. All rights reserved.
//

#import "ViewController.h"
#import "iflyMSC/IFlyMSC.h"
#import "iflyMSC/IFlySpeechError.h"
#import <Foundation/Foundation.h>
@interface ViewController ()<IFlySpeechRecognizerDelegate>
//不带界面的识别对象
{
   IFlySpeechRecognizer *iFlySpeechRecognizer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建语音听写对象
    iFlySpeechRecognizer = [IFlySpeechRecognizer sharedInstance]; //设置听写模式
    [iFlySpeechRecognizer setParameter:@"iat" forKey:[IFlySpeechConstant IFLY_DOMAIN]];
    //2.设置听写参数
    [iFlySpeechRecognizer setParameter: @"iat" forKey: [IFlySpeechConstant IFLY_DOMAIN]];
    //asr_audio_path是录音文件名,设置value为nil或者为空取消保存,默认保存目录在 Library/cache下。
    [iFlySpeechRecognizer setParameter:@"asrview.pcm" forKey:[IFlySpeechConstant ASR_AUDIO_PATH]];
    //3.启动识别服务 [_iFlySpeechRecognizer start];
}

//4. IFlySpeechRecognizerDelegate识别代理
/*识别结果返回代理
 @param :results识别结果
 @ param :isLast 表示是否最后一次结果
 */
- (void) onResults:(NSArray *)results isLast:(BOOL)isLast
{
    
}
/*识别会话结束返回代理
 @ param error 错误码,error.errorCode=0表示正常结束,非0表示发生错误。 */
- (void)onError: (IFlySpeechError *) error
{
    
}
/**
 停止录音回调
 ****/
- (void)onEndOfSpeech
{
    
}
/**
 开始识别回调
 ****/
- (void)onBeginOfSpeech
{
    
}
/**
 音量回调函数 volume 0-30
 9
 5. 语义理解
 使用语义理解前需要首先确保对应的appid已经开通语义功能,可参照: http://www.xfyun.cn/services/osp,语音识别结果请参照“语义开放平台API规范文档” 所示。使用示例如下所示:
 科大讯飞 MSC 新手指南(iOS)
 
 ****/
- (void) onVolumeChanged: (int)volume
{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
