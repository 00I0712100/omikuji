//
//  SecondController.m
//  omikuji
//
//  Created by TomokoTakahashi on 2015/02/11.
//  Copyright (c) 2015年 高橋知子. All rights reserved.
//

#import "SecondController.h"
#import "ViewController.h"

@interface SecondController ()

@end

@implementation SecondController
@synthesize number;

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // MOV
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"tumu" ofType:@"mov"]];
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    moviePlayer.view.frame = CGRectMake(0,0,320,480);
    moviePlayer.controlStyle = MPMovieControlStyleEmbedded;
    moviePlayer.scalingMode = MPMovieScalingModeAspectFit;
    [self.view addSubview:moviePlayer.view];
    [moviePlayer prepareToPlay];
    [moviePlayer play];
    
    _player = moviePlayer;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinished:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:_player];

    
    // Do any additional setup after loading the view.
    
     if(number<=2 && number>=0){//2%
     haikei.image=[UIImage imageNamed:@"mmmmm.png"];//まれふぃせんと
     }else if(number<=5 && number>2){//3%
     haikei.image=[UIImage imageNamed:@"so.png"];//ソーサラーミッキー
     }else if(number<=10 && number>5){//5%
     haikei.image=[UIImage imageNamed:@"eeeeeeeee.png"];//エルサ
     }else if(number<=17 && number>10){//7%
     haikei.image=[UIImage imageNamed:@"hhhhh.png"];//はちぷー
     }else if (number<=25 && number>17) {//8%
     haikei.image=[UIImage imageNamed:@"beru.png"];//べる
     }else if (number<=33 && number>25) {//8%
     haikei.image=[UIImage imageNamed:@"rrrrrrrr.png"];//らぷ
     }else if(number<=41 && number>33){//8%
     haikei.image=[UIImage imageNamed:@"yaju.png"];//やじゅう
     }else if(number<=50 && number>41){//9%
     haikei.image=[UIImage imageNamed:@"aaaaaaaaaaaaaaaaa.png"];//アリエル
     }else if(number<=59 && number>50){//9%
     haikei.image=[UIImage imageNamed:@"yanngu.png"];//やんぐー
     }else if(number<=68 && number>59){//9%
     haikei.image=[UIImage imageNamed:@"bbbbbbb.png"];//米マックス
     }else if(number<=77 && number>68){//9%
     haikei.image=[UIImage imageNamed:@"tinnku.png"];//ティンカーベル
     }else if(number<=87 && number>77){//10%
     haikei.image=[UIImage imageNamed:@"orafuu.png"];//おラフ
     }else if(number<=97 && number>87){//10%
     haikei.image=[UIImage imageNamed:@"ja.png"];//ジャック
     }else if(number<=112 && number>97){//15%
     haikei.image=[UIImage imageNamed:@"sa.png"];//さりー
     }else if(number<=130 && number>112){//18%
     haikei.image=[UIImage imageNamed:@"dddddddddd.png"];
     }else if(number<=150 && number>130){//20%
     haikei.image=[UIImage imageNamed:@"mmmmmmmmmmmmm.png"];
     }else{//25%
     haikei.image=[UIImage imageNamed:@"de.png"];
     }
    
    
    //[self localFile];
}


-(void)moviePreloadDidFinish:(NSNotification *)notification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMediaPlaybackIsPreparedToPlayDidChangeNotification
                                                  object:nil];
    // Preloadが終わったら呼ばれる
}

/*
- (void)moviePlayerPlaybackDidFinished:(NSNotification *)notification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification
                                                  object:nil];
    // 動画の再生が終わったら呼ばれる
}
 */

- (void)moviePlayBackDidFinished:(NSNotification *)notification
{
    NSDictionary *userInfo = [notification userInfo];
    switch([[userInfo objectForKey:MPMoviePlayerPlaybackDidFinishReasonUserInfoKey] intValue]) {
        case MPMovieFinishReasonPlaybackEnded:
            NSLog(@"playback ended");
            
            [self remove];
            
            NSLog(@"ともちゃん");
            
            break;
        case MPMovieFinishReasonPlaybackError:
            NSLog(@"playback error");
            break;
    }
}

- (void)remove {
    for (id object in self.view.subviews) {
        /*
        if ([[object class] isSubclassOfClass:[MPMovieView class]]) {
            NSLog(@"%@", object );
        }
         */
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        
    }
    return self;
    
}
-(IBAction)back{
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
