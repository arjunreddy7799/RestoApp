#import "UserViewController.h"
#import "WeightGainViewController.h"
#import "WeightLossViewController.h"
#import "EventViewController.h"
#import "ConsultViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController
{
    UIImageView *foodpic, *event, *consult;
    UILabel *food, *label, *health;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:11/255.f green:222/255.f blue:77/255.f alpha:0.5f];
    
    foodpic = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fruittray.jpg"]];
    foodpic.frame = CGRectMake(0, 30, self.view.frame.size.width, 250);
    foodpic.userInteractionEnabled = YES;
    [self.view addSubview:foodpic];
    
    food=[[UILabel alloc]initWithFrame:CGRectMake(50, 160, 350, 80)];
    food.text=@"FOOD INSTRUCTIONS";
    food.textColor=[UIColor redColor];
    [food setFont:[UIFont boldSystemFontOfSize:30]];
    [foodpic addSubview:food];
    
    event = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"events.png"]];
    event.frame = CGRectMake(0, 280, self.view.frame.size.width, 230);
    event.userInteractionEnabled = YES;
    event.tag = 101;
    [self.view addSubview:event];
    
    consult = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"healthcare-logo.png"]];
    consult.frame = CGRectMake(0, 510, self.view.frame.size.width, 230);
    consult.userInteractionEnabled = YES;
    consult.tag = 100;
    [self.view addSubview:consult];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    gesture.numberOfTapsRequired = 2;
    gesture.numberOfTouchesRequired = 1;
    gesture.delegate = self;
    
    [foodpic addGestureRecognizer:gesture];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(oneTap:)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.numberOfTouchesRequired = 1;
    singleTap.delegate = self;
    
    //    [self.view addGestureRecognizer:singleTap];
    //    [singleTap requireGestureRecognizerToFail:gesture];
    
    [event addGestureRecognizer:singleTap];
    
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(oneTapped:)];
    singleTap1.numberOfTapsRequired = 1;
    singleTap1.numberOfTouchesRequired = 1;
    singleTap1.delegate = self;
    
    [consult addGestureRecognizer:singleTap1];
    
}

-(void)oneTapped:(id)sender{
    
    ConsultViewController *cvc = [[ConsultViewController alloc]init];
    [self.navigationController pushViewController:cvc animated:NO];
    
}

-(void)oneTap:(id)sender{
    
    EventViewController *evc = [[EventViewController alloc]init];
    [self.navigationController pushViewController:evc animated:NO];
    
}

-(void)tapped{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"Something Wrong! Try Again" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"WeightGain" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        WeightGainViewController *wgvc = [WeightGainViewController new];
        [self.navigationController pushViewController:wgvc animated:NO];
        
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"WeightLoss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        WeightLossViewController *wlvc = [WeightLossViewController new];
        [self.navigationController pushViewController:wlvc animated:NO];
        
    }];
    
    UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }];
    
    [alertController addAction:action1];
    [alertController addAction:action2];
    [alertController addAction:dismiss];
    
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end