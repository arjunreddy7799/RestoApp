
#import "CuriousViewController.h"

@interface CuriousViewController ()

@end

@implementation CuriousViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    NSString *urlString = @"https://www.daysoftheyear.com/days/curious-events-day/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
    [self.view addSubview:webView];
    
}

    
    
//    NSString* text = @"https://www.daysoftheyear.com/days/curious-events-day/";
//    NSURL*    url  = [[NSURL alloc] initWithString:text];
//    
//    if (url.scheme.length == 0)
//    {
//        text = [@"http://" stringByAppendingString:text];
//        url  = [[NSURL alloc] initWithString:text];
//    }
//    
//    [[UIApplication sharedApplication] openURL:url];
//    
//  
//    
//}
//
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end