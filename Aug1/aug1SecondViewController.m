//
//  aug1SecondViewController.m
//  Aug1
//
//  Created by andrew rodney on 7/29/13.
//  Copyright (c) 2013 andrew rodney. All rights reserved.
//

#import "aug1SecondViewController.h"

@interface aug1SecondViewController ()

@end

@implementation aug1SecondViewController
@synthesize github = _github;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"SourceCode", @"HSourceCode");
        self.tabBarItem.image = [UIImage imageNamed:@"ic_action_github"];
        //spinnerlocation = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http://www.github.com/drew55g/Aug1"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [_github loadRequest:req];
    _github.scalesPageToFit=YES;
    _github.delegate = self;
    NSLog(@"Webview loaded");
}

- (void)webViewDidStartLoad:(UIWebView *)_github;
{
    [_spinner startAnimating];
    NSLog(@"New Webview loaded");
}


  - (void)webViewDidFinishLoad:(UIWebView *)_github;
   {
    NSLog(@"github finished loading");
    [_spinner stopAnimating];
    _spinner.hidesWhenStopped=YES;
   }


        - (void)didReceiveMemoryWarning
        {
            [super didReceiveMemoryWarning];
            // Dispose of any resources that can be recreated.
        }

@end
