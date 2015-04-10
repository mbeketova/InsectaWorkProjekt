//
//  DatailViewController.h
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatailViewController : UIViewController

@property (nonatomic, strong) NSString *string_MainValue;
@property (nonatomic, strong) NSString *string_MainValueLat;
@property (nonatomic, strong) NSString *string_textView;

@property (nonatomic, strong) IBOutlet UILabel *label_MainValue;
@property (nonatomic, strong) IBOutlet UILabel *label_MainValueLat;
@property (nonatomic, strong) IBOutlet UITextView *label_textView;
@property (nonatomic, strong) IBOutlet UIImageView *label_imageView;




@end
