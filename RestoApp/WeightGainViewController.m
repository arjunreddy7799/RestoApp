
#import "WeightGainViewController.h"

@interface WeightGainViewController ()

@end

@implementation WeightGainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:11/255.f green:11/255.f blue:222/255.f alpha:0.5f];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    webView.backgroundColor = [UIColor redColor];
    NSString*fileName= @"wait gain";
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:path isDirectory:NO]];
    [webView setScalesPageToFit:YES];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end