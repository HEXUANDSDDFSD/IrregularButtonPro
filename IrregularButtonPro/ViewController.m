//
//  ViewController.m
//  IrregularButtonPro
//
//  Created by hexuan on 16/10/27.
//  Copyright © 2016年 hexuan. All rights reserved.
//

#import "ViewController.h"
#import "HXIrregularButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HXIrregularButton *button = [HXIrregularButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, self.view.bounds.size.width / 2, self.view.bounds.size.width / 2);
    button.center = self.view.center;
    [button setBackgroundImage:[UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonAction {
    NSLog(@"click success");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
