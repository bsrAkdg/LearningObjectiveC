//
//  Ogretmen.h
//  PublicPrivateMetodlarApp
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ogretmen : NSObject

//fonksiyonla metod arasındaki tek fark emtodlar sınıf içinde tanımlanırlar.
//metodlar başlarına gelene + veya - sembolleri ile public ya da private olurlar.
//sınıf olan parametreler (NSMutableArray yada NSString gibi * ile kullanılır.)


- (void) deneme;   //herhangi bir değer döndürmeyen metod
- (int) deneme1;   //int değer döndüren metod
-(int) deneme2 : (int) sayi;  //parametreolarak int değer alır.
- (NSMutableArray *) deneme3;  //Mutable döndüren metod
- (NSMutableArray *) deneme4 : (NSMutableArray *) dizi; //parmetre olarak dizi adında MutableAray alır.

-(NSNumber *) sayiyiIkiyeKatla : (NSNumber *) sayi;
//iki parametre alan metod:
- (NSString *) stringi: (NSString *) str2 stringiletopla: (NSString *) str3;


@end
