//
//  DatailViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "DatailViewController.h"

@interface DatailViewController ()

@end

@implementation DatailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label_MainValue.text = self.string_MainValue;
    self.label_textView.text = self.string_textView;
    self.label_MainValueLat.text = self.string_MainValueLat;
    
    
    UIImage * image = [UIImage imageNamed: [NSString stringWithFormat:@"%@.jpg", self.string_MainValue]];
    self.label_imageView.image = image;
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
