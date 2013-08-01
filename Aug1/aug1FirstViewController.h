//
//  aug1FirstViewController.h
//  Aug1
//
//  Created by andrew rodney on 7/29/13.
//  Copyright (c) 2013 andrew rodney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>  //needed for AVAudioPlayer


@interface aug1FirstViewController : UIViewController

{
    AVAudioPlayer *music;
    AVAudioPlayer *music2;
    int var1;
    int var2;
    float result;
    
    
   
    NSMutableString *displayString;
}

@property (weak, nonatomic) IBOutlet UILabel *screenDisplay;
- (IBAction)buttonclick:(UIButton *)sender;
- (IBAction)buttonHonk:(UIButton *)sender;
- (IBAction)Clear:(UIButton *)sender;
- (IBAction)Plus:(UIButton *)sender;
- (IBAction)Multiply:(UIButton *)sender;
- (IBAction)Subtract:(UIButton *)sender;
- (IBAction)Divide:(UIButton *)sender;
- (IBAction)Equals:(UIButton *)sender;

@end
