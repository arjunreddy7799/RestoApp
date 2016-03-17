#import "ViewController.h"
#import "NewUsersViewController.h"
#import "UserViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    UILabel *namelable;
    UITextField *username, *password;
    UIButton *user, *newUser;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
    
//    UIImageView *foodpic = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"61928.jpeg"]];
//    foodpic.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//    foodpic.userInteractionEnabled = YES;
//    [self.view addSubview:foodpic];

    
    namelable=[[UILabel alloc]init];
    namelable.text=@"HEALTH CARE";
    namelable.frame=CGRectMake(108,90, 200, 80);
    namelable.textColor=[UIColor whiteColor];
    [namelable setFont:[UIFont boldSystemFontOfSize:30]];
    [self.view addSubview:namelable];
    
    username=[[UITextField alloc]initWithFrame:CGRectMake(20, 200, 380, 60)];
    username.borderStyle=UITextBorderStyleBezel;
    username.textColor=[UIColor whiteColor];
    username.backgroundColor=[UIColor clearColor];
    username.placeholder=@"Username";
    [username setLeftViewMode:UITextFieldViewModeAlways];
    [self.view addSubview:username];
    
    password=[[UITextField alloc]initWithFrame:CGRectMake(20, 280, 380, 60)];
    password.borderStyle=UITextBorderStyleBezel;
    password.textColor=[UIColor whiteColor];
    password.backgroundColor=[UIColor clearColor];
    password.placeholder=@"Password";
    [password setLeftViewMode:UITextFieldViewModeAlways];
    [self.view addSubview:password];
    
    user=[[UIButton alloc]initWithFrame:CGRectMake(20,500, 100, 40)];
    [user setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [user setTitle:@"USER" forState:UIControlStateNormal];
    user.backgroundColor=[UIColor colorWithRed:241/255.0f green:25/255.0f blue:85/255.0f alpha:1.0f];
    [user addTarget:self action:@selector(performAction:) forControlEvents:UIControlEventTouchUpInside];
    user.tag=100;
    [self.view addSubview:user];
    
    newUser=[[UIButton alloc]initWithFrame:CGRectMake(275,500, 100, 40)];
    [newUser setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [newUser setTitle:@"NEW USER" forState:UIControlStateNormal];
    newUser.backgroundColor=[UIColor colorWithRed:241/255.0f green:25/255.0f blue:85/255.0f alpha:1.0f];
    [newUser addTarget:self action:@selector(performAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:newUser];
    
}

-(void)performAction:(id)sender{
    
    
    if([sender tag] == 100){
        
        if (username.text.length == 0|| password.text.length == 0) {
            
            UIColor *color = [UIColor redColor];
            
            username.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"UserName" attributes:@{NSForegroundColorAttributeName: color}];
            password.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: color}];
            
            return;
            
        }
        
        UserViewController *uvm=[[UserViewController alloc]init];
        [self.navigationController pushViewController:uvm animated:NO];
        
    }
    else{
        
        NewUsersViewController *nuvm=[[NewUsersViewController alloc]init];
        [self.navigationController pushViewController:nuvm animated:NO];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end