//
//  HexapodaViewController.h
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HexapodaViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) NSMutableArray * arrayMK; //массив по крылатым
@property (nonatomic, strong) NSArray * arrayValueK;
@property (nonatomic, strong) NSArray * arrayValueLatK;
//@property (nonatomic, strong) NSMutableArray * arrayDescriptK; добавить после внесения опиания по крылатым

@end
