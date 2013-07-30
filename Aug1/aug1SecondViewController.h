//
//  aug1SecondViewController.h
//  Aug1
//
//  Created by andrew rodney on 7/29/13.
//  Copyright (c) 2013 andrew rodney. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface aug1SecondViewController : UIViewController <UIWebViewDelegate> {
    UIWebView* github;
}


//@interface aug1SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *github;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;


@end
