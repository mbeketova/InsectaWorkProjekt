//
//  ViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewController.h"
#import "DatailViewController.h"

@interface ViewController ()


@property (nonatomic, strong) NSMutableArray * arrayM; //массив по безкрылым
@property (nonatomic, strong) NSArray * arrayValue;
@property (nonatomic, strong) NSArray * arrayValueLat;
@property (nonatomic, strong) NSMutableArray * arrayDescript;

@property (nonatomic, strong) NSMutableArray * arrayMK; //массив по крылатым
@property (nonatomic, strong) NSArray * arrayValueK;
@property (nonatomic, strong) NSArray * arrayValueLatK;
//@property (nonatomic, strong) NSMutableArray * arrayDescriptK; добавить после внесения опиания по крылатым

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//создаем массив по безкрылым:
//-------------------------------------------------------------------------------------------------------------------------------------------
    NSString * stringValue = @"бессяжковые, двухвостые, ногохвостки, щетинохвостки";
    NSString * stringValueLat = @"Protura, Diplura, Collembola, Thysanura";
    
    NSString * stringProtura = @"Отряд скрыточелюстных шестиногих. В настоящее время учёными описано более 800 видов, из которых около 300 принадлежат роду Eosentomon. Малоизученная группа, по некоторым оценкам, истинное число видов превышает число описанных более чем в 1,5 раза. Бессяжковые — обитатели почвы и разлагающихся растительных останков. Удельное количество бессяжковых на 1 квадратный метр земли составляет около 90000. Большинство питаются грибами, высасывая их мицелий, некоторые являются хищниками. Тело удлиненное, 0,5—2 мм в длину. Ротовой аппарат энтогнатного типа, специализированный, мандибулы колющие. Протурам свойственен ряд уникальных апоморфий и плезиоморфий в строении тела. Голова лишена каких-либо следов глаз и, что особенно уникально среди членистоногих, антенн. Имеются постантеннальные органы — ложные глазки. Передние ноги сильно вытянуты и снабжены большим количеством сенсоров, заменяя утраченные усики. Строение груди и первых сегментов брюшка различаются слабо. На последних присутствуют двухчлениковые слаборазвитые ноги либо их одночлениковые рудименты, сохранившие мускулатуру. Лапка одночлениковая, свободная. ";
    
    NSString * stringDiplura = @"Отряд скрыточелюстных шестиногих. В настоящее время учёными описано 976 видов, включая 1 ископаемый вид, 170 из которых обитают в Северной Америке и 30 в Австралии. По современным представлениям первые двухвостки возникли в позднем каменноугольном периоде. Двухвостки — обычные обитатели влажной почвы, растительного опада и перегноя, хотя их редко замечают из-за маленьких размеров и скрытного образа жизни. У них есть кусающие жвала, которыми они питаются разной живой добычей и мёртвой органической материей. Двухвостки в основном маленькие членистоногие, в длину достигающие 2—5 мм, хотя встречаются виды, длина которых может достигать 50 мм (из рода Japyx) и 60 мм (вид Atlasjapyx). Брюшко состоит из 10 сегментов. У них отсутствуют глаза и пигментация тела, лишь у некоторых видов имеются утемнённые церки. Усики длинные с десятью или более чёткообразными члениками направленные вперёд головы. Пара церок направлена прямо назад от головы и расположены они на последнем брюшном сегменте. Церки могут быть длинными и иметь форму нити, либо они могут быть короткие и клешнеобразные, вторая форма церок очень похожа на церки уховёрток в связи с чем их часто путают. Некоторые двухвостки умеют отбрасывать свои церки при необходимости (автотомия); из всех живущих в почве членистоногих только двухвостки способны отращивать эти потерянные придатки, и происходит это во время линьки. В течение жизни двухвостки линяют тринадцать или чуть более раз; продолжительность жизни двухвосток около года.";
    
    NSString * stringCollempola = @"Подкласс членистоногих. Ранее рассматривался как отряд (ногохвостки) первичнобескрылых насекомых, однако в современной классификации отнесён к скрытночелюстным. Иногда рассматривается в ранге отдельного класса или подкласса. В настоящее время учёными описано более 8 тыс. видов, включая 24 ископаемых вида. Это шестиногие мелкие членистоногие микроартроподы размером 1—5 мм (рекорды: от 0,12 до 17 мм). Населяют, главным образом, подстилку и почву во всех регионах Земли. По внешнему виду чётко разделяются на вытянутых, иногда червеобразных членистобрюхих и шарообразных слитнобрюхих. Также довольно многочисленны и в других местообитаниях, таких как стволы деревьев, лишайники. Характерных представителей можно в массе повстречать на поверхности водоёмов (Podura aquatica), в траве (Sminthuridae), на снегу в горах (Entomobrya nivalis). Отдельно стоит сказать о коллемболах, заселяющих приливно-отливную зону на морском берегу, так как у них можно наблюдать ряд интересных приспособлений для жизни в данном местообитании. В лабораторных условиях у 30 видов коллембол обнаружена зоофагия на мелких почвенных червях (нематоды, энхитреиды). Считается, что ногохвостки возникли в девоне (ок. 420 млн лет назад), откуда известны их первые палеонтологические находки (Rhyniella praecusor).По данным исследования ДНК установлено, что Collembola представляют отдельную эволюционную линию в составе Hexapoda. Однако есть и обратные данные. Таксономический уровень коллембол варьирует в зависимости от того, к какой группе их относят. Когда их включают в состав класса Насекомые, то им придают уровень отряда; как часть Entognatha они получают статус подкласса. Если же их рассматривать как базальную линию эволюции Hexapoda, то они соответствуют уровню отдельного класса. ";
    
    NSString * stringThysanura = @"Отряд первичнобескрылых насекомых. Одна из наиболее характерных особенностей — наличие трёх хвостовых нитей (пары церков и непарного парацерка), благодаря которым щетинохвостки и получили своё название. Из всех первичнобескрылых щетинохвостки наиболее близко родственны крылатым насекомым, с которыми их сближает строение усиков, или антенн, и сочленения верхних челюстей, или мандибул, с головной капсулой. Вместе с тем, щетинохвостки характеризуются рядом примитивных особенностей: длинными членистыми церками, наличием парацерка, рудиментарными конечностями на брюшных сегментах (втяжными пузырьками и грифельками). Наиболее известный представитель — обыкновенная чешуйница, нередко встречающаяся в жилых домах. В настоящее время учёными описано 574 вида, включая 20 ископаемых видов, в основном обитающих в тропических и субтропических поясах. Щетинохвосток часто ошибочно называют мокрицами. ";
    
    
    
    //заносим в массив значения из строки без символов запятая и пробел:
    
    self.arrayValue = [stringValue componentsSeparatedByString:@", "];
    self.arrayValueLat = [stringValueLat componentsSeparatedByString:@", "];
    
    //заносим в массив описания:
    self.arrayDescript = [[NSMutableArray alloc]initWithObjects:stringProtura,stringDiplura, stringCollempola, stringThysanura, nil];

    self.arrayM = [[NSMutableArray alloc]init];
    
    //данный цикл записывает в коллекцию значения из массива arrayValue и соответствующие ему значения из массива arrayValueLat, arrayDescript  пока не закончатся элементы в массиве arrayValue:
    
    for (int i = 0; i < self.arrayValue.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
        [dict setObject:[self.arrayValue objectAtIndex:i] forKey:@"value"];
        [dict setObject:[self.arrayValueLat objectAtIndex:i] forKey:@"latvalue"];
        [dict setObject:[self.arrayDescript objectAtIndex:i] forKey:@"discr"];
     
        
        

        
        
        [self.arrayM addObject:dict];
        
        
    }
    
    
    
    
    //здесь сортируем массив по названию:
    NSSortDescriptor * sorter = [[NSSortDescriptor alloc] initWithKey:@"value" ascending:YES];
    NSArray * descriptors = [NSArray arrayWithObjects:sorter, nil];
    [self.arrayM sortUsingDescriptors:descriptors];
    
    
    
    
    
    NSLog(@"%@",self.arrayM); //выводим на печать полученный массив с названиями (рус. и лат.)
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

    
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
 //       [dict setObject:[self.arrayDescript objectAtIndex:i] forKey:@"discr"]; - добавить, когда внесу описания
        
        
        
        
        
        
        [self.arrayM addObject:dict];
        
        
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
    return self.arrayM.count;

}

//здесь заполняем таблицу отряд-латиниское название:
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * simpleTaibleIndefir = @"Cell";

    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTaibleIndefir];
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTaibleIndefir];
        
    }
    
    cell.textLabel.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.detailTextLabel.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"latvalue"];

    
    
    
    return cell;

}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    заполняем наследуемый вьюконтроллер DatailViewController (наименование, и описание)
    
    DatailViewController * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detal animated:YES];
    
    NSDictionary * dict = [self.arrayM objectAtIndex:indexPath.row];

    detal.string_MainValue = [dict objectForKey:@"value"];
    detal.string_textView = [dict objectForKey:@"discr"];
    detal.string_MainValueLat = [dict objectForKey:@"latvalue"];

    
    
//    NSLog(@"indexPath %li", (long)indexPath.row);
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.arrayMK.count;
}

//здесь заполняем таблицу отряд-латиниское название:
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    

    static NSString * simpleTaibleIndefir2 = @"Cell2";

    
    UITableViewCell * cell2 = [tableView dequeueReusableCellWithIdentifier:simpleTaibleIndefir2];
    if (cell2 == nil) {
        
        cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTaibleIndefir2];
        
    }
    
    
    cell2.textLabel.text = [[self.arrayMK objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell2.detailTextLabel.text = [[self.arrayMK objectAtIndex:indexPath.row]objectForKey:@"latvalue"];
    
    
    
    return cell2;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//
    
    
    
    //    NSLog(@"indexPath %li", (long)indexPath.row);
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
