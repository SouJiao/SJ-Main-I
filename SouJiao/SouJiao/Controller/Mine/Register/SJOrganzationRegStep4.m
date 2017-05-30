//
//  SJOrganzationRegStep4.m
//  SouJiao
//
//  Created by Ares on 2017/5/30.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "SJOrganzationRegStep4.h"

@interface SJOrganzationRegStep4 () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property(nonatomic, strong) IBOutlet UIImageView* imageView;
@property(nonatomic, strong) IBOutlet UIButton* button;

@end

@implementation SJOrganzationRegStep4

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button.layer.cornerRadius = 3.0;
    self.button.layer.masksToBounds = YES;
    self.button.enabled = NO;
    self.button.backgroundColor = [UIColor lightGrayColor];
    self.button.alpha = 0.7;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) onImageButtonClicked:(id)sender
{
    weakSelf(obj);
    UIAlertAction* pickPhotoAction = [UIAlertAction actionWithTitle:@"从相册选取" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [obj pickPhoto];
    }];

    UIAlertAction* shootPhotoAction = [UIAlertAction actionWithTitle:@"从相机拍摄" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [obj shootPhoto];
    }];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [alertController addAction:pickPhotoAction];
    [alertController addAction:shootPhotoAction];
    [alertController addAction:cancelAction];
    
    [self.navigationController presentViewController:alertController animated:YES completion:nil];
}

-(IBAction) onFinishedRegButtonClicked:(id)sender
{
    
}

-(void) pickPhoto
{
    UIImagePickerController* photoPickerController = [[UIImagePickerController alloc] init];
    photoPickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    photoPickerController.allowsEditing = NO;
    photoPickerController.delegate = self;
    [self.navigationController presentViewController:photoPickerController animated:YES completion:nil];
}

-(void) shootPhoto
{
    UIImagePickerController* photoPickerController = [[UIImagePickerController alloc] init];
    photoPickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    photoPickerController.delegate = self;
    [self.navigationController presentViewController:photoPickerController animated:YES completion:nil];
}

#pragma mark - 

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    if (picker.sourceType == UIImagePickerControllerSourceTypeSavedPhotosAlbum) {
        UIImage* image = [info objectForKey:UIImagePickerControllerOriginalImage];
        if (image) {
            [self.imageView setImage:image];
            self.button.enabled = YES;
            self.button.backgroundColor = [UIColor sjBlueColor];
            self.button.alpha = 1.0;
        }
    }
    else if (picker.sourceType == UIImagePickerControllerSourceTypeCamera)
    {
        UIImage* image = [info objectForKey:UIImagePickerControllerOriginalImage];
        if (image) {
            [self.imageView setImage:image];
        }
    }
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
}

@end
