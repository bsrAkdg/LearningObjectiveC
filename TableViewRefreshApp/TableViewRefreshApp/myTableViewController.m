//
//  myTableViewController.m
//  TableViewRefreshApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "myTableViewController.h"

@interface myTableViewController ()

@end

@implementation myTableViewController
@synthesize dizi;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    dizi = [NSMutableArray array];
    
    [dizi addObject:@"deneme1"];
    [dizi addObject:@"deneme2"];
    
    //table viewi tutup çektiğimiz zaman yenilenmesini sağlamak için:
    
    UIRefreshControl *ref = [[UIRefreshControl alloc] init];
    
    //şimdi şuan ki view controller'ı az önce tanımladığım ref' e bağlamak için:
    
    self.refreshControl = ref;
    
    //şimdi bir yenile fonskyionu oluştur aşağıda tableviewde değer eğiştiği an otomatik yenilemeyi sağlaması için bu fonksyionu çağırsın bunu belirtmek için: id' ye kendini gönderiyor, action' a hangi metodun çağrılacağı selector olarak belirtiliyor, forControlEvents' e ne zaman çağrılacağı belirtiliyor.
    
    [ref addTarget:self action:@selector(yenile) forControlEvents:UIControlEventValueChanged];
    
    //refresh mantığı bir çok yerde kullanılabilir. Veritabanına veri eklemede silmede çekmede ...
    
    
}

-(void) yenile{
  //Şimdi her aşağı çekmede yenilerken o anki zamanı diziye eklesin:
    //öncelikle zaman formatını tanımlıyoruz
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    //formatın ne olacağını belirtiyoruz:
    [formatter setDateFormat:@"mm : ss"];
    
    //Şimdi bir string tanımlıyoruz. Zamanı bu string' e atayacağız:
    NSString *str= [formatter stringFromDate:[NSDate date]];
    
    
    //şimdi stringi diziye atıyoruz:
    [dizi addObject:str];
    
    //tableview'in yeniden yüklenmesini sağlıyoruz:
    [self.tableView reloadData];
    
    //yenilemeyi bitiriyoruz. Yoksa sürekli yeniliyor gözükür
    [self.refreshControl endRefreshing];
    

}

//şimdide hangi section hangi rowun seçildiğini brliten metodu yazalım:
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //parametre olarak bize seçilen bölümün index'i gelir  ama biz burda neye ulaşmak istiyorsak (section, row bilgisi) buna indexPath.section ya daindexPath.row diyerek ulaşırız.
    NSLog(@"   %d . section' da %d . row seçildi  ", indexPath.section, indexPath.row );
    
    
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
    return dizi.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myidentifier" forIndexPath:indexPath];
    
    
    // Configure the cell...
    
    
    cell.textLabel.text = [dizi objectAtIndex:indexPath.row];
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
