//
//  myFirstTableViewController.m
//  TableViewControllerApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "myFirstTableViewController.h"

@interface myFirstTableViewController ()

@end

@implementation myFirstTableViewController
@synthesize arr;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // varolan viewcontroller' ı sildik. Navigation Controller' ı sürükleyip bıraktık doa beraberinde zaten Table View Controller' ı getirdi. Ardından myFirstTableViewController.h ve .m oluşturduk.
    
    // tableviewcontroller ile birlikte gelen metodlar: bir tableview' da kaç section var,  kaç cell var, her cellde kaç satır var.
    
    //.h ta bir dizi tanımlamak ve onu göstermek aşağıda:
    
    arr= @[@"@selam", @"@naber", @"@iyisenden", @"@iyi benden de "];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//bir tableview controllerda bulunan section sayısı:
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 1;
}

//her section da bulunan satır sayısı
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arr.count;
}


//her satırda ne bulunduğu
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"denemeidentifier" forIndexPath:indexPath];
    
    //şimdi git denemeidentifier ı storyboarda prototip cell in identifer kısmına yaz.
    
    //her cell in bir label ı var şimdi idip o labelına sırayla diziyi yazdırıyoruz.
    cell.textLabel.text = [arr objectAtIndex:   indexPath.row];
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
