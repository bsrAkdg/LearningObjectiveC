//
//  Kisi.h
//  Self-Super-Constructor-App
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kisi : NSObject

//ilk olarak constructor tanımlıyoruz genelde constructorlar başına (instancetype) gelerek ad olarak initWith ile başlayarak (-ile beraber kur manasında) tanımlanırlar :
//parametre olarak int alıcak

-(instancetype) initWithKimlikNo: (int) KimlikNo;
+(instancetype) kisiWithKimlikNo: (int) KimlikNo;

@property int KimlikNo;

@end
