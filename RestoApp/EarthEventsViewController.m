
#import "EarthEventsViewController.h"
#import "EventViewController.h"

@interface EarthEventsViewController ()

@end

@implementation EarthEventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    NSString *urlString = @"http://www.earthday.org/greencities/events/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
    [self.view addSubview:webView];
    


    
    
//    UIWebView *viewWeb=[[UIWebView alloc]init];
//    
////    NSString* text = @"www.earthday.org/greencities/events/";
////    NSURL*    url  = [[NSURL alloc] initWithString:text];
////    
////    if (url.scheme.length == 0)
////    {
////        text = [@"http://" stringByAppendingString:text];
////        url  = [[NSURL alloc] initWithString:text];
////    }
////    
////    [[UIApplication sharedApplication] openURL:url];
////    
//
//    
//    NSString *fullURL = @"http://www.earthday.org/greencities/events/";
//    NSURL *url = [NSURL URLWithString:fullURL];
//    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
//    [viewWeb loadRequest:requestObj];
//    [self.view addSubview:viewWeb];
//    
//
   EventViewController *evc = [[EventViewController alloc]init];
    [self.navigationController popToViewController:evc animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end