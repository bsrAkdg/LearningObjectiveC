//
//  myTableViewController.m
//  CustomCellForTableViewApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "myTableViewController.h"

@interface myTableViewController ()

@end

@implementation myTableViewController
@synthesize SimpsonName, SimpsonPngPath;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Custom Bir Cell oluşturmak istiyorsak öncelikle tableviewcontroller oluşturduktan sonra tableviewcontroller da o celli' i görsel olarak oluşturuyoruzç biz bir imageview birde label tanımladık. bu bileşenlerin property' lerini yeni oluşturduğumuz myCell class'ta tanımladık. myTableViewController' a myCelli import etmeyi birde myCell' in identifier'ini myTableViewController' da set etmeyi unutmayın!
    
    //şimdi label için SimpsonName dizisini,
    //imageviewler için SimpsonPngPath dizisini oluşturalım.
    
    SimpsonName=@[@"Lisa", @"Somer", @"Meggie", @"Bart"];
    SimpsonPngPath=@[@"lisa.png", @"somer.png", @"meggie.png", @"bart.png"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [SimpsonName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    //custom cell' imizi tanımlıyoruz:
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myidentifier" forIndexPath:indexPath];
    
    //artık biz myCell' de tanımladığımız myLbel ve myImageView' ı burada set edebiliriz. Dikkat: UITableViewCell den türettiğimiz cell değil bu dikat etin myCell' den türeyen cell!!
   
    
    //image' i set ederken uıimage türünden olcak o yüzden SimpsonPngPath' den indexPath.row indeksli resmi set ediyoruz.
    cell.myImageView.image=[UIImage imageNamed:[ SimpsonPngPath objectAtIndex:indexPath.row]];
    
    cell.myLabel.text = [SimpsonName objectAtIndex : indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
