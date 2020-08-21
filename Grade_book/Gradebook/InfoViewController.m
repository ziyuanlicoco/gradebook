//
//  InfoViewController.m
//  Gradebook
//
//  Created by Ziyuan Li on 3/3/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "InfoViewController.h"
#import "ViewController.h"

@interface InfoViewController ()
@property (weak, nonatomic) IBOutlet UIButton *returnButton;
@property (weak, nonatomic) IBOutlet UITextField *studentName;
@property (weak, nonatomic) IBOutlet UITextField *studentAddress;
@property (weak, nonatomic) IBOutlet UIImageView *studentImage;

@end

@implementation InfoViewController

- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _studentName.text = self.displayStudent.studentName;
    _studentAddress.text = self.displayStudent.studentAddress;
    _studentImage.image = self.displayStudent.studentImage;
    
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
