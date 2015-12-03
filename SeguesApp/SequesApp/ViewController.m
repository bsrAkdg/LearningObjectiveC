//
//  ViewController.m
//  SequesApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtView;

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
        üç adet view controller var. Aralarındaki segue' lere identifier atadık: birincisi firstSegue ikincisi secondSegue. Burda amacımız kullanıcı textfielde 1 yazdığında firstViewController'a 2 yazdığındaysa secondViewController' a gidecek. Öncelikle butona tıklandığında textfield ' de yazanın kontrolünü yapıyoruz.
     
            
            eğer ben her view' a farklı türde veri yolayacaksamda (birinciye NSString ikinciye NSArray gibi ) parametre olarak segue' nin geldiği metoddada if' le segue' nin son durağına bakıyorum ona göre veriyi yoluyorum.
    
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goView:(id)sender {
    
    //burda perfomSegueWithIdentifier hangi seque olduğunu bulur ve ikinci parametresinde o view' ı gönderir.
    
    if ([txtView.text isEqualToString:@"firstSeque"]) {
        [self performSegueWithIdentifier:@"firstSegue" sender:self];
    } else {
        [self performSegueWithIdentifier:@"secondSegue" sender:self];
    }
}

//şimdi hangi view' e neyi göndereceğiz onu belirliyoruz. Önce parametre olarak gelen segue' nin hangi seque old tespit et sonra gödnereceğini gönder.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([segue.identifier isEqualToString:@"firstSegue"]) {
        //eğer birinci seque ise kelebek stringini yolla:
        
        firstViewController *fsc = [segue destinationViewController];
        
        fsc.str=@"kelebek";
        
        //şimdi bunu firstView'ın didViewLoad' ında yazdır.
    
    } else {
        //eğer ikinci seque ise 0 int değeri yolla:
        
        secondViewController *svc = [segue destinationViewController];
        svc.intdeneme=0;
        svc.arr= @[@"kelebek", @"böcek"];
        
        //şimdi bunu secondView'ın didViewLoad' ında yazdır.
        
    
    }

}
@end
