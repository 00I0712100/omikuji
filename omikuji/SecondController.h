//
//  SecondController.h
//  omikuji
//
//  Created by TomokoTakahashi on 2015/02/11.
//  Copyright (c) 2015年 高橋知子. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface SecondController : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UITextView *textView;
    int number;
    IBOutlet UIImageView *haikei;
    MPMoviePlayerController *moviePlayer;
}

-(IBAction)back;

@property int number;
@property (strong, nonatomic) MPMoviePlayerController *player;

@end
