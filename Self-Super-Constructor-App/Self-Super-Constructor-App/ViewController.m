//
//  ViewController.m
//  Self-Super-Constructor-App
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Kisi sınıfı oluşturuldu
    //cunstructor tanımlandı
    //şimdi kontrol ediyoruz constructor çalışıyor mu?
    
    Kisi *k1 = [[Kisi alloc]init];
    
    //şimdi cunstroctur' ı devreye sokuyoruz:
    Kisi *k2 = [[Kisi alloc] initWithKimlikNo:41];
    
    NSLog(@"  %d", [k2 KimlikNo]);
    
    //biz burda constructora paramete olarak 41 yolladık peki ya hiç bir değer göndermezsek varsayılan değeri nasıl ayarlarız?
    
    //bunun için  Kisi.m dosyasına git ve -(id)init{} ' e bak
    
    NSLog(@"  %d", [k1 KimlikNo]);
    
    //şimdi Kisi *k3 = [[Kisi alloc]init]; ile tanımlamak yerine kısa yoldan     Kisi *k1 = [[Kisi kisiWithKimlikNo]  şeklinde tanımlayabilmem için:
    
    //bunun için yine Kisi.m dosyasına git ve kisiWithKimlikNo bak:
    
    Kisi *k3 = [Kisi kisiWithKimlikNo:20];
    
    NSLog(@"  %d", [k3 KimlikNo]);

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
