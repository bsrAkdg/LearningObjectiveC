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
    
    //.h ta tanımladığım diiziye iki dizi atayabilirsin biri celld eğerleri biri details değerleri:
    //iki section şeklinde göstermek istiyorum:
    
    NSArray *cellvalue =@[@"selam", @"naber", @"iyisenden", @"iyi benden de "];
    NSArray *details = @[ @"Türkiye", @"Bursa", @"Çanakkale",  @"İstanbul", @"Antalya"];
    
    
    arr = @[ cellvalue, details];
    
    //bunun için kullanacağım metodu aşağıya ekliyorum   **** olan :
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//bir tableview controllerda bulunan section sayısı:
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return arr.count;
}

//her section da bulunan satır sayısı
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //section bize arr' in  dizisini verir.
    
    //section bize cellvalue yada details ' i verir.
    return [[ arr objectAtIndex:section] count];
}


//her satırda ne bulunduğu
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"denemeidentifier" forIndexPath:indexPath];
    
    //şimdi git denemeidentifier ı storyboarda prototip cell in identifer kısmına yaz.
    
    //her cell in bir label ı var şimdi idip o labelına sırayla diziyi yazdırıyoruz. Ama önce section indeksli yi çekip onun rıw indeksli değerini label' a set edeceğiz.
    
    cell.textLabel.text = [[arr objectAtIndex: indexPath.section] objectAtIndex: indexPath.row];
                      //şu kısım dizi1 yada dizi2 yi gönderir.          //burası o dizideki o satırı
    
    
    //eğer cell'in prototipini detail' li bir şey yaptıysak;
    
    cell.detailTextLabel.text= @"Bu bir detail'dir";
    
    
    return cell;
}
 // **** olan metod:

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    //artık iki dizi ayrı section larda gösterilecek
    if (section == 0) {
        return  @"öylesine";
    } else {
         return @"ülkeler";
    }
    //eğer bu başlıkalrın büyük başlık olmasını istiyorsak:  hemen aşağıdaki %% li emtoda bak
}

// %% metodu boyutunu büyüttük

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
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
