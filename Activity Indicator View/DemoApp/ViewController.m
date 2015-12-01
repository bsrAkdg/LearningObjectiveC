//
//  ViewController.m
//  DemoApp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize indicator;

- (void)viewDidLoad {
    [super viewDidLoad];

    //ilk olarak bir indicator oluşturuyoruz (.s ta oluşturmadıysak). Uygulama açılırken gözükmesi için burada tanımladık.
    //bir örneği ilk defa oluşturacaksak mutlaka başına yıldız koymalıyız. Indicatorı oluştururken style' yıda belirliyoruz:
    //UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    //eğer .h dosyasında oluşturduysak burda sadece adını yazmamız yeterli: (başlangıçta @synthesize indicator ' ı unutma);
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    
    //şimdi konumunu belirliyoruz. CGPointMake' i daha öncede kullanmıştık.Konumu bu fonk ile belirliyoruz.
    //[indicator setCenter:CGPointMake(50, 50)];
    //yada bu şekilde tam ortalayabiliriz.
    [indicator setCenter: self.view.center];
    
    //şimdi oluşturduğum indicator' ı ana view' e ekliyorum.
    [self.view addSubview:indicator];
    
    //artık çalıştırabiliriz.
    [indicator startAnimating];
    
    //şimdi durdurmak için performselector fonksiyonunu çağırıyoruz. Sırayla fonksiyon adı, parametre olarak alacağı obje ve kaç sn sonra sonlandırılacağı belirtilir.
    [self performSelector:@selector(stopAnimate) withObject:nil afterDelay:3.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//dikkat indicator'ı durdurmak için fonksyion değil metod tanımlıyoruz
-(void) stopAnimate{
    [indicator stopAnimating];
}
@end
