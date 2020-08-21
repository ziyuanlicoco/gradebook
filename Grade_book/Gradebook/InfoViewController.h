//
//  InfoViewController.h
//  Gradebook
//
//  Created by Ziyuan Li on 3/3/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface InfoViewController : UIViewController


@property (strong, nonatomic) Student * displayStudent;
@end

NS_ASSUME_NONNULL_END
