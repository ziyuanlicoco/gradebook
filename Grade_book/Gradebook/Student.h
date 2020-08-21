//
//  Student.h
//  Gradebook
//
//  Created by Ziyuan Li on 3/4/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Student : NSObject{

    
}

@property (strong, nonatomic)UIImage *studentImage;
@property (strong, nonatomic)NSString *studentName;
@property (strong, nonatomic)NSString *studentAddress;
@property (nonatomic)int midterm;
@property (nonatomic)int studentFinal;
@property (nonatomic)int HW1;
@property (nonatomic)int HW2;
@property (nonatomic)int HW3;

@end

