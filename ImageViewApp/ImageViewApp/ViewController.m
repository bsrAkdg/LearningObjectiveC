//
//  ViewController.m
//  ImageViewApp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //şimdi programatik olarak imageview oluşturacağız:
    
    //ilk olarak bir çerçeve oluşturalım:
    CGRect frame = CGRectMake(0,0,200,200);
    
    //bir imageview oluşturuyoruz ve frame e yerleştiriyoruz.  (Ek bilgi: UIView türünden gelen tüm her şeyde initWithFrame bulunur)
    UIImageView *image = [[UIImageView alloc] initWithFrame:frame];
    
    //daha sonra Supporting Files' ta bulunan resmi set ediyoruz.
    [image setImage : [UIImage imageNamed:@"simpson.png"]];
    
    //şimdi bu image' i view' a ekliyoruz.
    [self.view addSubview:image];
    
    //image e bazı özellikler ekleyelim
    //resmi ortalayalım ve dolduralım. (Scale aspect Fit : tam olarak doldur)
    [image setContentMode:UIViewContentModeScaleAspectFit];
    
    
     //dot syntax , box syntax nedir?
     //ana view controller ın içindeki değişkeni nokta ile de seçebilirdik:
     // self.view -> dot syntax     ,    [self view] -> box syntax
    
     //örnek:      [self.view addSubview:image] -->  [self.view addSubview:image];
     //örnek     [image setContentMode:UIViewContentModeScaleAspectFit] -> image.contentMode = UIViewContentModeScaleAspectFit; gibi gibi
    
    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
