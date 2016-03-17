
#import "RaceViewController.h"

@interface RaceViewController ()

@end

@implementation RaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];

    NSString *urlString = @"https://racedayevents.net/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
    [self.view addSubview:webView];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end