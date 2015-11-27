//
//  main.m
//  LearnObjectiveC
//
//  Created by Büşra Akdağ on 27/11/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <Foundation/Foundation.h>
//aşağıda yazdığımız fonksiyonun xcode ortamında çalısmasını sağlar.
#import <Cocoa/Cocoa.h> 

//1---> NSOBject tüm sınıfların atası.
//Her oluşturulacak class bu şekilde oluşturulur.
@interface Fotograf : NSObject
{
    int fotografsayisi;   //sınıf değişkenleri burada tanımlanır.
    
}

- (void) fotoarttir : (int) a;   //metodları burada tanımlanır.

@end


//2---> yukarıda tanımladıgımız sınıfın metodlarını gerçekliyoruz.
@implementation Fotograf

- (void) fotoarttir: (int) a{
    //fonksiyona parametre olarak gelen a degerini
    //class ımızda tanımladığımız fotografsayisi değişkenine atadık ve konsolda yazdırdık
    fotografsayisi= a;
    printf("Fotograf sayisi : %u\n", fotografsayisi);
}

@end


//3---> şimdi classımızı deniyoruz.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fotograf *fotograf = [[Fotograf alloc]init];  // Fotoğraf sınıfından bir nesne oluşturduk Fotograf sınıfına ait adresten adres degeri atadık.
        [fotograf fotoarttir:5];  // bu fotograf nesnesi ile artol Fotograf sınıfının metodlarına erişebiliyoruz [nesne function: value]
        
        
    }
    return 0;
}

