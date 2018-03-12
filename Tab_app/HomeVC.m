//
//  HomeVC.m
//  Tab_app
//
//  Created by Fname Lname on 12/03/18.
//  Copyright © 2018 Xeper. All rights reserved.
//

#import "HomeVC.h"
#import "CollectionViewCell.h"

@interface HomeVC ()

{
    
    
    
    NSArray *imagearray;

}

@end

@implementation HomeVC

- (void)viewDidLoad {
    
    
    imagearray = [@[@"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg",
                    @"IconImage.jpg"] mutableCopy];
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}





-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return imagearray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *mycell = [collectionView
                                  dequeueReusableCellWithReuseIdentifier:@"MyCell"
                                  forIndexPath:indexPath];
    mycell.layer.borderWidth=3.0f;
    mycell.layer.borderColor=[UIColor lightGrayColor].CGColor;
    UIImage *image;
    long row = [indexPath row];
    image = [UIImage imageNamed:imagearray[row]];
    mycell.img.image = image;
    //    NSString *str=[self.carImages objectAtIndex:indexPath.row];
    //
    //    mycell.imageView.image=[UIImage imageNamed:str];
    return mycell;
}


//
//- (void)collectionView:(UICollectionView *)collectionView
//didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//
////    if (indexPath.item == 0) {
////        ProfileViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////    }
////
////    else if (indexPath.item == 1)
////    {
////        MyhealthViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"MyhealthViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////
////    }
////
////    else if (indexPath.item == 2)
////    {
////        HealthAadharRegViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"HealthAadharRegViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////
////    }
////
////
////    else if (indexPath.item == 3)
////    {
////        FndhospitalViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"FndhospitalViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////    }
////
////
////
////
////    else if (indexPath.item == 4)
////    {
////        FndpharmecyViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"FndpharmecyViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////    }
////
////
////
////    else if (indexPath.item == 5)
////    {
////        TelimedicineViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"TelimedicineViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////
////    }
////
////
////
////    else if (indexPath.item == 6)
////    {
////        MymedicineViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"MymedicineViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////
////    }
////
////
////    else if (indexPath.item == 7)
////    {
////        OccupationalhealthViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"OccupationalhealthViewController1"];
////        [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
////        //dvc.secondLabelText=mobile_txt.text;
////        [self presentViewController:dvc animated:YES completion:nil];
////
////    }
//
//}
//
//


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
