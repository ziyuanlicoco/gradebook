//
//  ViewController.h
//  Gradebook
//
//  Created by Ziyuan Li on 3/3/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InfoViewController.h"
@protocol ViewControllerDelegate;
@interface ViewController : UIViewController

@property (weak, nonatomic) id<ViewControllerDelegate>delegate;

@end


@protocol ViewControllerDelegate <NSObject>


- (void)signInViewController:(ViewController *)signInVC
                didEnterName:(NSString *)name
                didEnterAddress:(NSString *)add
                didEnterMidterm:(int)midterm
                    didEnterFinal:(int)fiinal
                    didEnterHW1:(int)hw1
                    didEnterHW2:(int)hw2
                    didEnterHW3:(int)hw3
                        didImage:(UIImage *)image
;
- (void)updateViewController:(ViewController *)signInVC
                didEnterName:(NSString *)name
                didEnterAddress:(NSString *)add
                didEnterMidterm:(int)midterm
                    didEnterFinal:(int)fiinal
                    didEnterHW1:(int)hw1
                    didEnterHW2:(int)hw2
                    didEnterHW3:(int)hw3
;


@end


