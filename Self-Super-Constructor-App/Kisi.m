//
//  Kisi.m
//  Self-Super-Constructor-App
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "Kisi.h"

@implementation Kisi

//cunstructor' ı .h dosyasında tanımladık .m dosyasında implement ediyoruz:
-(instancetype)initWithKimlikNo:(int)KimlikNo{
    
    //şimdi parametre olarak gelen KimlikNo yu alıp sınıftaki KimlikNo' ya atamak sitiyorum ama bunu nasıl bilicek önce bunu bildiriyor:
    
    //self burada Kisi sınıfı oluyor. hHangi instance ile çalışıyorsak odur yani.
    //super NSObject oluyor.
    
    self = [super init];
    
    //eğer bu instance kurulabildiyse
    if(self){
        self.KimlikNo = KimlikNo;
    }
    
    return self;
    //constructor' ı tanımlamış olduk.
    
    
    
}
//cunstructor' a varsayılan değer atar:

-(id)init{
    return [self initWithKimlikNo:-1]; //bu kod gider yukarıdaki initWithKimlikNo' yu çağırır
    
}

// Kisi *k1 = [[Kisi kisiWithKimlikNo]  şeklinde tanımlamalar için:
+(instancetype)kisiWithKimlikNo:(int)KimlikNo{
    return [[Kisi alloc] initWithKimlikNo:KimlikNo];
}

//Kisi sınıfı parçalanmadan önce bir şey log lamayı felan sağlıyor.
-(void)dealloc{


}
@end
