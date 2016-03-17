
#import "ConsultViewController.h"
#import <AFNetworking.h>

@interface ConsultViewController ()

@end

@implementation ConsultViewController{
    NSMutableArray *array;
    UITableView *tableView1;
    UIButton *button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"hlflz0O3QJdfytbTKquR4XSqYdO19bGqzTuRu0or" forHTTPHeaderField:@"X-Parse-Application-Id"];
    [manager.requestSerializer setValue:@"AJCWKaB8X8FmthGRs3fZcaXtLpRsE5ZONsqTTApc" forHTTPHeaderField:@"X-Parse-REST-API-Key"];
    
    NSString *string=[NSString stringWithFormat:@"https://api.parse.com/1/classes/Healthcarecentres"];
    
    [manager GET:string parameters:@{} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"JSON: %@", responseObject);
        
        array= [NSMutableArray new];
        
        array = [responseObject valueForKey:@"results"];
        
        tableView1=[[UITableView alloc]initWithFrame:self.view.frame];
        tableView1.delegate = self;
        tableView1.dataSource = self;
        tableView1.separatorColor=[UIColor greenColor];
        
        [self.view addSubview:tableView1];
        
        
        tableView1.backgroundColor=[UIColor whiteColor];
        
        [tableView1 reloadData];
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please try Again" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
        
        [alert show];
        
    }];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section==0){
        return @"HEALTCARECENTERS";
    }
    else{
        return @"------";
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CELLIDENTIFIER=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CELLIDENTIFIER];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CELLIDENTIFIER];
    }
    NSDictionary *user=[array objectAtIndex:indexPath.row];
    cell.textLabel.text=[user valueForKey:@"NameOfCentre"];
    // cell.detailTextLabel.text=[user valueForKey:@"body"];
    [button setHidden:YES];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end