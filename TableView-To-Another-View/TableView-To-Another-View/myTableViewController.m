//
//  myTableViewController.m
//  TableView-To-Another-View
//
//  Created by Büşra Akdağ on 04/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "myTableViewController.h"

@interface myTableViewController ()

@end

@implementation myTableViewController
@synthesize kisiler;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Bu projede amaç tableview de tanımlanan diziden bir cell seçildiğinde başka bir view' e bu bilgileri aktarmaktır.
    // Bir tableviewcontroller oluşturun
    // Bir viewcontroller oluşturun
    // Birde bilgielri tutan sınıf oluştuurp TableviewController.h' a import edin.
    // Storyboard' a NavigationController ve ViewController ekleyin
    // Unutmayın !! : TableViewController.m' de Cell için tanımladığınız identifier' ı Storyboard' da cel kısmını seçim sağ menüde identifer kısmına set etmeyi birde Oluşturduğunuz TableViewController ve TableViewController' ın class adlarını stroyboard' da class bölümüne set etmeyi unutmayınn !!
    // Tabloda seçim yapıldıktan sonra diğer View' e geçmek için Cell' i kntrl ile seçerek oluşturduğumuz ViewController' a sürükleyip çekin.
    // Segue oluşacak methoduna PUSH diyin.
    // ViewController.h ' a Kisi.h class'ını import edin. Çünkü ordaki bilgileri çekeceğiz ve Kisi türünde bir değişken oluşturun.
    // TableViewController.h ' a da bilgileri akataracağımız ViewController' ı import edin.
    // Bilgileri aktarmak için bu class' ı oluşturduğumzuda hazır gelen metodlardan prepareForSegue' yi açın (en aşağıda)
    //
    
    Kisi *k1 = [[Kisi alloc] init];
    Kisi *k2 = [[Kisi alloc] init];
    Kisi *k3 = [[Kisi alloc] init];
    Kisi *k4 = [[Kisi alloc] init];
    Kisi *k5 = [[Kisi alloc] init];

    k1.isim=@"Hülya";
    k1.tcKimlikNo=123;
    k1.sehir=@"Bursa";
    
    k2.isim=@"Melek";
    k2.tcKimlikNo=123;
    k2.sehir=@"Gaziantep";
    
    k3.isim=@"Nalan";
    k3.tcKimlikNo=123;
    k3.sehir=@"Antalya";
    
    k4.isim=@"Aylin";
    k4.tcKimlikNo=123;
    k4.sehir=@"Ankara";
    
    k5.isim=@"Büşra";
    k5.tcKimlikNo=123;
    k5.sehir=@"İstanbul";
    
    kisiler = [NSMutableArray arrayWithObjects:k1,k2,k3,k4,k5, nil];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return kisiler.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myidentifier" forIndexPath:indexPath];
   
    Kisi * k = [kisiler objectAtIndex:indexPath.row];
    // Configure the cell...
    cell.textLabel.text = k.isim;
    
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    //daha önceki uygulamalarda da yaptığımız gibi eğer bir view' dan diğer bir view' e veri göndermek istiyorsak gönderilecek viewcontroller' ı segue' nin son durağı olarak belirleriz.
    myViewController *mvc = [segue destinationViewController];
    
    //NSIndexPath' ten oluşturduğum index değişkenine  self'te bulunan tableview' dan o anda seçilmiş olan değerin indexini atıyorum:
    NSIndexPath *index  = [self.tableView indexPathForSelectedRow];
    
    //şimdi bu index' in row' una karşılık gelen değeri ViewController' da değişken olarak tutulan gonderilenKisi' ye atıyorum:
    mvc.gonderilenKisi = [kisiler objectAtIndex : index.row];
    
    //atık bnm view controller'ım Tableviewcontroller' dan gelen değere sahip!
    //gidip viewcontroller ' da viewdidload da nslog ile yazıp controller edin! :)
}
@end
