//
//  historicaleventsViewController.m
//  RestoApp
//
//  Created by saikrishna on 19/02/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "historicaleventsViewController.h"

@interface historicaleventsViewController ()

@end

@implementation historicaleventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    NSString *urlString = @"https://en.wikipedia.org/wiki/Timeline_of_Indian_history";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
    [self.view addSubview:webView];
    
}

    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
