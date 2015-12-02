//
//  ViewController.m
//  InheritanceApp
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
    /*
     
    şimdi Objective-c de kalıtım nasıl olur bunu öğreneceğiz:
    ilk olarak File-> New -> File -> Source ->Cocoa Source Class ' diyerek Kisi adında class oluşturuyoruz.
    Artık Kisi.m ve Kisi.h oluşmuş olacak
    şimdi ViewController'ımızın bu classtan haberdar olması için en sağlıklı yöntem ViewController.h' a Kisi.h' yi import etmek
    Her zaman interfaceleri import etmek yeterlidir.
    artık Kisi nesnesi oluşturabiliriz:
     */
    
    Kisi *kisi = [[Kisi alloc]init];
    
    //şimdi Kisi.h' e özellikler ekle
    //şimdi tekrar class oluştur ve adına Ogrenci de. Daha Sonra Ogrenciyi : Kisi' den türet. Böylelikle Ogrenci, Kisi' nin özelliklerine erişebilir.
    //Ogrenci' ye ogrenciNo özelliği ekle
    //ViewController.h Ogrenci' ye erişmek zorunda olduğu için oraya Ogrenci.h' ı import et
    
    Ogrenci *ogr =[[Ogrenci alloc]init];
    ogr.kimlikNo=23213;   //ogrenci Kisi' den türediği için buna erişebilir.
    ogr.okulNo=84;  //kendi özelliklerine de erişebilir.
    ogr.adSoyad=@"Büşra Akdağ";
    
    //gördüğünüz gibi özelliklere daha kolay eriştik.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
