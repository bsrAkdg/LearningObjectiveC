//
//  Ogretmen.m
//  PublicPrivateMetodlarApp
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "Ogretmen.h"

@implementation Ogretmen

-(void)deneme{}
-(int)deneme1{

    return 1;
}
-(int)deneme2:(int)sayi{

    return 0;

}

-(NSMutableArray *)deneme3{

    return [NSMutableArray array];

}

-(NSMutableArray *)deneme4:(NSMutableArray *)dizi{

    return [NSMutableArray array];
}

-(NSNumber *)sayiyiIkiyeKatla:(NSNumber *)sayi{
    return [NSNumber numberWithInt: sayi.integerValue *2];
}
-(NSString *)stringi:(NSString *)str1 stringiletopla:(NSString *)str2{
    //Şimdi boş bir NSStringMutable örneği oluşturup parametre olarak gelen string leri ona ekliyoruz
    //ilk değeri boş olan string aş gibi tanımlanır:
    NSMutableString *str3 = [NSMutableString stringWithString:@""];
    
    [str3 appendString:str1];
    [str3 appendString:str2];
    
    //geri dönüş tipi NSString olan bir metodda geri dönüş tipi olarak NSMutableString yollayabiliriz.
    return str3;
}
@end
