
#import "DetailedViewController.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    
//    NSString *urlString = @"www.indianchild.com/history_of_india1.htm";
//   NSURL *url = [NSURL URLWithString:urlString];
//
//    
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [webView loadRequest:urlRequest];
//    [self.view addSubview:webView];
//    
//}

    
      self.view.backgroundColor = [UIColor colorWithRed:1/255.f green:111/255.f blue:22/255.f alpha:0.5f];
    
    NSString* text = @"www.onthisday.com/today/events.php.com";
    NSURL*    url  = [[NSURL alloc] initWithString:text];
    
    if (url.scheme.length == 0)
    {
        text = [@"http://" stringByAppendingString:text];
        url  = [[NSURL alloc] initWithString:text];
    }
    
    [[UIApplication sharedApplication] openURL:url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end