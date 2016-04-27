//
//  ViewController.m
//  SpeakForTest
//
//  Created by 韩俊强 on 16/4/26.
//  Copyright © 2016年 韩俊强. All rights reserved.
//

#import "ViewController.h"
#import "IATViewController.h"

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
}

- (IBAction)goTest:(id)sender
{
    
    IATViewController *hjqVC = [[IATViewController alloc]init];
    
    [self presentViewController:hjqVC animated:YES completion:nil];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
