//
//  ViewController.h
//  firstapp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <UIKit/UIKit.h>

//view bileşenleri burada tanımlanır.

@interface ViewController : UIViewController

//textfieldi tanımlar.
@property (strong, nonatomic) IBOutlet UITextField *txtfield;

//textfielde değiştirme işlemi başladığında çağrılır
- (IBAction)editingbegin:(id)sender;

//değiştirme işlemi tamamlandığında çağrılır
- (IBAction)editingend:(id)sender;

//her değişim olduğunda çağrılır. (Her harf eklediğinde)
- (IBAction)editingchanged:(id)sender;

//label tanımlanıyor.
@property (strong, nonatomic) IBOutlet UILabel *label;


//view e buton ekle. Type Custom yap. View klasöründe en üste taşıki diğer view bileşenlerinin altında kalsın. tüm ekranı kaplattır. İsmini sil. Amaç edittextte işimiz bittikten sonra ekranda bir yere tıklayıp çıkmak.
- (IBAction)allscreenbutton:(id)sender;

@end

