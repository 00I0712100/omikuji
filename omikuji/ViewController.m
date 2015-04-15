//
//  ViewController.m
//  omikuji
//
//  Created by TomokoTakahashi on 2015/01/28.
//  Copyright (c) 2015年 高橋知子. All rights reserved.
//

#import "ViewController.h"
#import "SecondController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)pushButton{
    number=arc4random_uniform(175);//0~99
    
    SecondController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"svc"];
    svc.number=number;
    svc.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:svc animated:YES completion:nil];
    
    if(number>7){
        omikujiLabel.text=@"大吉";
        omikujiLabel.textColor=[UIColor redColor];
    }else if(number<=7 && number>2){
        omikujiLabel.text=@"吉";
        omikujiLabel.textColor=[UIColor blackColor];
    }else{
        omikujiLabel.text=@"凶";
        omikujiLabel.textColor=[UIColor blueColor];
    }
}
@end
