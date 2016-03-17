#import "NewUserViewController.h"
#import "UserViewController.h"
#import "AFNetworking.h"

@interface NewUserViewController ()

@end

@implementation NewUserViewController
{
    UILabel *label, *gender;
    UITextField *firstName, *lastName, *mailId, *password, *epassword, *age, *mobile;
    UIImageView *female, *male;
    UIScrollView *scroll;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
   
//    UIImageView *foodpic = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/saikrishna/Developer/RestoApp/RestoApp/1414102370-tips-entrepreneurs-healthy-road.jpg"]];
//    foodpic.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//    foodpic.userInteractionEnabled = YES;
//    [self.view addSubview:foodpic];
//    

    
    scroll = [[UIScrollView alloc]initWithFrame:self.view.frame];
    scroll.contentSize = CGSizeMake(400, 1300);
    [self.view addSubview:scroll];
    
    label=[[UILabel alloc]init];
    label.text=@"STAY HEALTHY";
    label.frame=CGRectMake(108, 45, 400, 80);
    label.textColor=[UIColor whiteColor];
    [label setFont:[UIFont boldSystemFontOfSize:30]];
    [scroll addSubview:label];
    
    firstName=[[UITextField alloc]initWithFrame:CGRectMake(20, 150, 400, 70)];
    firstName.borderStyle=UITextBorderStyleBezel;
    firstName.textColor=[UIColor whiteColor];
    firstName.backgroundColor=[UIColor clearColor];
    firstName.placeholder=@"UserName";
    [firstName setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:firstName];
    
    lastName=[[UITextField alloc]initWithFrame:CGRectMake(20, 270, 400, 70)];
    lastName.borderStyle=UITextBorderStyleBezel;
    lastName.textColor=[UIColor whiteColor];
    lastName.backgroundColor=[UIColor clearColor];
    lastName.placeholder=@"LastName";
    [lastName setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:lastName];
    
    mailId=[[UITextField alloc]initWithFrame:CGRectMake(20, 390, 400, 70)];
    mailId.borderStyle=UITextBorderStyleBezel;
    mailId.textColor=[UIColor whiteColor];
    mailId.backgroundColor=[UIColor grayColor];
    mailId.placeholder=@"Enter MailID";
    [mailId setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:mailId];
    
    password=[[UITextField alloc]initWithFrame:CGRectMake(20, 510, 400, 70)];
    password.borderStyle=UITextBorderStyleBezel;
    password.textColor=[UIColor whiteColor];
    password.backgroundColor=[UIColor clearColor];
    password.placeholder=@"Password";
    [password setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:password];
    
    epassword=[[UITextField alloc]initWithFrame:CGRectMake(20, 630, 400, 70)];
    epassword.borderStyle=UITextBorderStyleBezel;
    epassword.textColor=[UIColor whiteColor];
    epassword.backgroundColor=[UIColor clearColor];
    epassword.placeholder=@"Re-enter Password";
    [epassword setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:epassword];
    
    age=[[UITextField alloc]initWithFrame:CGRectMake(20, 750, 400, 70)];
    age.borderStyle=UITextBorderStyleBezel;
    age.textColor=[UIColor whiteColor];
    age.backgroundColor=[UIColor clearColor];
    age.placeholder=@"Age";
    [age setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:age];
    
    mobile=[[UITextField alloc]initWithFrame:CGRectMake(20, 870, 400, 70)];
    mobile.borderStyle=UITextBorderStyleBezel;
    mobile.textColor=[UIColor whiteColor];
    mobile.backgroundColor=[UIColor clearColor];
    mobile.placeholder=@"MobileNumber";
    [mobile setLeftViewMode:UITextFieldViewModeAlways];
    [scroll addSubview:mobile];
    
    UISwitch *switchview =[[UISwitch alloc]initWithFrame:CGRectMake(60, 990, 400, 70)];
    [switchview addTarget:self action:@selector(performAction:) forControlEvents:UIControlEventValueChanged ];
    [scroll addSubview:switchview];
    
    gender=[[UILabel alloc]initWithFrame:CGRectMake(150, 970, 100, 70)];
    gender.textColor=[UIColor grayColor];
    gender.text=@"GENDER";
    gender.textColor=[UIColor whiteColor];
    gender.font=[UIFont fontWithName:@"Helvetica"  size:20];
    [scroll addSubview:gender];
    
}

-(void)performAction:(id)sender{
    
    if([sender isOn]){
        
        male = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/saikrishna/Developer/RestoHealth/RestoHealth/Icons-Land-Vista-People-Office-Client-Male-Dark.ico"]];
        male.frame = CGRectMake(280, 990, 100, 70);
        [scroll addSubview:male];
        
    }
    else{
        
        female = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/saikrishna/Developer/RestoHealth/RestoHealth/Icons-Land-Vista-People-Office-Customer-Female-Dark.ico"]];
        female.frame = CGRectMake(280, 990, 100, 70);
        [scroll addSubview:female];
        
    }
    
    UIButton *submit=[[UIButton alloc]initWithFrame:CGRectMake(150, 1100, 100, 70)];
    [submit setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submit setTitle:@"SUBMIT" forState:UIControlStateNormal];
    submit.backgroundColor=[UIColor colorWithRed:241/255.0f green:25/255.0f blue:85/255.0f alpha:1.0f];
    [submit addTarget:self action:@selector(performeAction:) forControlEvents:UIControlEventTouchUpInside];
    [scroll addSubview:submit];
    
}

-(void)performeAction:(id)sender{
    
    if (firstName.text.length == 0|| lastName.text.length == 0 || mailId.text.length == 0 || password.text.length == 0 || epassword.text.length == 0 ) {
        
        UIColor *color = [UIColor redColor];
        
        firstName.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"FirstName" attributes:@{NSForegroundColorAttributeName: color}];
        lastName.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"LastName" attributes:@{NSForegroundColorAttributeName: color}];
        mailId.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"MailID" attributes:@{NSForegroundColorAttributeName: color}];
        password.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: color}];
        epassword.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"Re-enterPassword" attributes:@{NSForegroundColorAttributeName: color}];
    
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        
        [manager.requestSerializer setValue:@"F7JB6gI2A65D6EfwZAf119t0E2yebCaJ8cjSuoU0" forHTTPHeaderField:@"X-Parse-Application-Id"];
        [manager.requestSerializer setValue:@"E1qZqC0bbdMzloVRWHjXDZcvbuQTJFHeOqPmqMLr" forHTTPHeaderField:@"X-Parse-Rest-API-Key"];
        
        NSString *url=@"https://api.parse.com/1/classes/Login";
        
        
        [manager POST:url parameters:@{@"firstName":firstName.text,@"password":password.text} success:^(AFHTTPRequestOperation *operation, id responseObject) {
            
            NSLog(@"%@",firstName.text);
            UserViewController *uvc =[[UserViewController alloc]init];
            [self.navigationController pushViewController:uvc animated:NO];
            
            
            
            
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            
            //UIAlertController *alert = [[UIAlertController alloc]initWithNibName:@"Success" bundle:nil];
            
            return;
        }];
    }

        
      //  return;
    
    
//}

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