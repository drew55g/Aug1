//
//  aug1FirstViewController.m
//  Aug1
//
//  Created by andrew rodney on 7/29/13.
//  Copyright (c) 2013 andrew rodney. All rights reserved.
//

#import "aug1FirstViewController.h"

@interface aug1FirstViewController ()

@end

@implementation aug1FirstViewController

int var1 = NULL;
int var2 = NULL;
int n = 0;
int currentNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Calculator", @"Calculator");
        self.tabBarItem.image = [UIImage imageNamed:@"ic_menu_home"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.screenDisplay = [NSMutableString stringWithCapacity:40];
    
    NSBundle *bundle = [NSBundle mainBundle];
    if (bundle == nil) {
        NSLog(@"could not get the main bundle");
    }
    
    //The path is the filename.
    NSString *path =
    [bundle pathForResource: @"button-16" ofType: @"mp3"];
    if (path == nil) {
        NSLog(@"could not get the path");
        //return YES;
    }
    NSLog(@"path == \"%@\"", path);
    
    NSURL *url = [NSURL fileURLWithPath: path isDirectory: NO];
    NSLog(@"url == \"%@\"", url);
    
    NSError *error = nil;
    music = [[AVAudioPlayer alloc]
             initWithContentsOfURL: url error: &error];
    if (music == nil) {
        NSLog(@"error == %@", error);
        // return YES;
    }
    
    
    /* second button sound  */
    
    //The path is the filename.
    NSString *path2 =
    [bundle pathForResource: @"button-10" ofType: @"mp3"];
    if (path == nil) {
        NSLog(@"could not get the path");
        //return YES;
    }
    NSLog(@"path == \"%@\"", path2);
    
    NSURL *url2 = [NSURL fileURLWithPath: path2 isDirectory: NO];
    NSLog(@"url == \"%@\"", url2);
    
    NSError *error2 = nil;
    music2 = [[AVAudioPlayer alloc]
              initWithContentsOfURL: url2 error: &error];
    if (music2 == nil) {
        NSLog(@"error == %@", error2);
        // return YES;
    }
    
    
    music.volume = 1.0;		//the default
    music.numberOfLoops = 0;	//negative number for infinite loop
    /*
     NSLog(@"player.numberOfChannels == %u",
     player.numberOfChannels); //mono or stereo
     */
    
    if (![music prepareToPlay]) {
        NSLog(@"could not prepare to play");
        //  return YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) proccessDigit: (int) digit
{
    currentNumber = currentNumber * 10 + digit;
    [displayString appendString:[NSString stringWithFormat:@"%i", digit]];
    _screenDisplay.text = displayString;
}

- (IBAction)buttonclick:(UIButton *)sender {
    ++n;
    NSString *title = [sender titleForState:UIControlStateNormal];
    //_screenDisplay.text=[NSString stringWithFormat:@"%@", title];
    // _screenDisplay.text=[NSString stringWithFormat:@"%@", title];
   //var1 = title.intValue;
    //int digit = sender.tag;
    //[self proccessDigit:digit];
    
    [music play];
    
  
}

- (IBAction)buttonHonk:(UIButton *)sender {
    [music2 play];
}
@end
