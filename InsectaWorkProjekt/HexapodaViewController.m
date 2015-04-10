//
//  HexapodaViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "HexapodaViewController.h"

@interface HexapodaViewController ()

@end

@implementation HexapodaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    //создаем массив по крылоносным:
    //-------------------------------------------------------------------------------------------------------------------------------------------
    
    NSString * stringValueK = @"Двукрылые, Чешуекрылые, Бахромчатокрылые, Равнокрылые, Полужесткокрылые, Уховертки, Жесткокрылые, Стрекозы, Прямокрылые, Богомолы, Тараканы, Перепончатокрылые, Сетчатокрылые";
    NSString * stringValueLatK = @"Diptera, Lepidoptera, Thysanoptera, Homoptera, Hemiptera, Dermaptera, Coleoptera, Odonatoptera, Orthoptera, Mantoptera, Blattoptera, Hymenoptera, Neuroptera";
    
    //заносим в массив значения из строки без символов запятая и пробел:
    
    self.arrayValueK = [stringValueK componentsSeparatedByString:@", "];
    self.arrayValueLatK = [stringValueLatK componentsSeparatedByString:@", "];
    
    self.arrayMK = [[NSMutableArray alloc]init];
    
    //данный цикл записывает в коллекцию значения из массива arrayValue и соответствующие ему значения из массива arrayValueLat, пока не закончатся элементы в массиве arrayPrice:
    
    for (int i = 0; i < self.arrayValueK.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
        [dict setObject:[self.arrayValueK objectAtIndex:i] forKey:@"value"];
        [dict setObject:[self.arrayValueLatK objectAtIndex:i] forKey:@"latvalue"];
//      [dict setObject:[self.arrayDescript objectAtIndex:i] forKey:@"discr"]; - добавить, когда внесу описания
        
        
        
        
        
        
        [self.arrayMK addObject:dict];
        
        
    }
    
    
    
    
    //здесь сортируем массив по названию:
    NSSortDescriptor * sorterK = [[NSSortDescriptor alloc] initWithKey:@"value" ascending:YES];
    NSArray * descriptorsK = [NSArray arrayWithObjects:sorterK, nil];
    [self.arrayMK sortUsingDescriptors:descriptorsK];
    
    
    
    
    
    NSLog(@"%@",self.arrayMK); //выводим на печать полученный массив с названиями (рус. и лат.)
    //-------------------------------------------------------------------------------------------------------------------------------------------------------
    
}



#pragma mark - UITableViewDelegate


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayMK.count;
    
}

//здесь заполняем таблицу отряд-латиниское название:
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * simpleTaibleIndefir = @"Cell2";
    
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTaibleIndefir];
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTaibleIndefir];
        
    }
    
    cell.textLabel.text = [[self.arrayMK objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.detailTextLabel.text = [[self.arrayMK objectAtIndex:indexPath.row]objectForKey:@"latvalue"];
    
    
    
    
    return cell;
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //    заполняем наследуемый вьюконтроллер DatailViewController (наименование, и описание)
    
//    DatailViewController * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
//    [self.navigationController pushViewController:detal animated:YES];
//    
//    NSDictionary * dict = [self.arrayMK objectAtIndex:indexPath.row];
//    
//    detal.string_MainValue = [dict objectForKey:@"value"];
//    detal.string_textView = [dict objectForKey:@"discr"];
//    detal.string_MainValueLat = [dict objectForKey:@"latvalue"];
    
    
    
    //    NSLog(@"indexPath %li", (long)indexPath.row);
    
}

    

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
