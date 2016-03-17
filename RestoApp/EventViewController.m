#import "EventViewController.h"
#import "DetailedViewController.h"
#import "RaceViewController.h"
#import "CuriousViewController.h"
#import "EarthEventsViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController{
    NSArray *table;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:111/255.f green:11/255.f blue:222/255.f alpha:0.5f];
    
    //
    //    UIImageView *image0 =[[UIImageView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
    //    image0.image=[UIImage imageNamed:@"EventsNSO.jpg"];
    //    [self.view addSubview:image0];
    
    table=[[NSArray alloc]initWithObjects:@"RACEDAYEVENTS",@"Historical Events On This Day",@"Curious Events Day",@"Earth Day Events Worldwide", nil];
    UITableView *tableView=[[UITableView alloc]init];
    tableView.frame=self.view.frame;
    //    tableView.backgroundColor=[UIColor grayColor];
    tableView.dataSource=self;
    tableView.delegate=self;
    [self.view addSubview:tableView];
    
    //  [image0 addSubview:tableView];
    //
    //    tableView.backgroundColor = [UIColor clearColor];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return table.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *value=[table objectAtIndex:indexPath.row];
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:value];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:value];
        
    }
    cell.textLabel.text = [table objectAtIndex:indexPath.row];
    //    cell.imageView.image=[table objectAtIndex:indexPath.row];
    UILabel *label=[[UILabel alloc]init];
    label.text = [table objectAtIndex:indexPath.row];
    [cell addSubview:label];
    
    //    cell.backgroundColor = [UIColor clearColor];
    //    cell.selectedBackgroundView =[[UIView new] autorelease];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 130;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *value2=[table objectAtIndex:indexPath.row];
    
    if (indexPath.row==1) {
        
        DetailedViewController *dvc=[[DetailedViewController alloc]init];
        dvc.value2=value2;
        
        [self.navigationController pushViewController:dvc animated:YES];
        
    }
    else if (indexPath.row==0){
        
        RaceViewController *rvc=[[RaceViewController alloc]init];
        rvc.value2=value2;
        
        [self.navigationController pushViewController:rvc animated:YES];
        
    }
    
    else if (indexPath.row==2){
        
        CuriousViewController *cvc=[[CuriousViewController alloc]init];
        cvc.value2=value2;
        
        [self.navigationController pushViewController:cvc animated:YES];
        
    }
    
    else{
        
        EarthEventsViewController *e2vc=[[EarthEventsViewController alloc]init];
        e2vc.value2=value2;
        
        [self.navigationController pushViewController:e2vc animated:YES];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end