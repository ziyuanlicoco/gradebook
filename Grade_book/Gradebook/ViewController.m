//
//  ViewController.m
//  Gradebook
//
//  Created by Ziyuan Li on 3/3/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *updateSegCtrl;
@property (strong, nonatomic) NSMutableArray *studentList;
@property (weak, nonatomic) IBOutlet UITextField *StudentNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *StudentAddressTxt;
@property (weak, nonatomic) IBOutlet UITextField *MidtermTxt;
@property (weak, nonatomic) IBOutlet UITextField *FinalTxt;
@property (weak, nonatomic) IBOutlet UITextField *HW1Txt;
@property (weak, nonatomic) IBOutlet UITextField *HW2Txt;
@property (weak, nonatomic) IBOutlet UITextField *HW3Txt;
@property (weak, nonatomic) IBOutlet UIButton *previousButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UISlider *ctrlSlider;
@property (weak, nonatomic) IBOutlet UIButton *saveInfo;
@property (weak, nonatomic) IBOutlet UIButton *updateButton;
@property (weak, nonatomic) IBOutlet UILabel *errorMsg;

@property (nonatomic)int count;
@property (nonatomic)int size;

@end

@implementation ViewController



- (void)viewDidLoad {
    
    
    
    //[_saveInfo setTitle:@"saveUpdate" forState:UIControlStateNormal];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _count = 0;
    _size = 0;
    _previousButton.enabled = NO;
    
    _errorMsg.hidden = YES;
    _saveInfo.hidden = YES;
    
    
    _studentList = [[NSMutableArray alloc] init];
    
    Student *student1 = nil;
    student1 = [[Student alloc]init];
    [student1 setStudentName:@"King Richard III"];
    [student1 setStudentAddress:@"Leicester Castle, England"];
    [student1 setHW1:9];
    [student1 setHW2:10];
    [student1 setHW2:00];
    [student1 setMidterm:72];
    [student1 setStudentFinal:45];
    [student1 setStudentImage:[UIImage imageNamed:@"Richard.jpg"]];

    
    
    [_studentList addObject:student1];
    _size++;
   
    Student *student2 = [[Student alloc]init];
    [student2 setStudentName:@"Prince Hamlet"];
    [student2 setStudentAddress:@"Elsinore Castle, Denmark"];
    [student2 setHW1:10];
    [student2 setHW2:10];
    [student2 setHW2:10];
    [student2 setMidterm:100];
    [student2 setStudentFinal:0];
    [student2 setStudentImage:[UIImage imageNamed:@"hamlet.jpg"]];

    [_studentList addObject:student2];
    _size++;

    Student *student3 = [[Student alloc]init];
    [student3 setStudentName:@"King Lear"];
    [student3 setStudentAddress:@"ELeicester Castle, England"];
    [student3 setHW1:10];
    [student3 setHW2:6];
    [student3 setHW2:0];
    [student3 setMidterm:100];
    [student3 setStudentFinal:22];
    [student3 setStudentImage:[UIImage imageNamed:@"lear.jpg"]];

    [_studentList addObject:student3];
    _size++;
    
    Student *currentStudent = [_studentList objectAtIndex: 0];
    _StudentNameTxt.text = currentStudent.studentName;
    _StudentAddressTxt.text = currentStudent.studentAddress;
    _MidtermTxt.text = [NSString stringWithFormat: @"%d", currentStudent.midterm];
    _FinalTxt.text = [NSString stringWithFormat: @"%d", currentStudent.studentFinal];
    _HW1Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW1];
    _HW2Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW2];
    _HW3Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW3];
    
    
    
}

//dismiss keyboard
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

      [self.view endEditing:YES];

}


- (IBAction)segmentChange:(UISegmentedControl *)sender {
    
    
    if(_updateSegCtrl.selectedSegmentIndex==0){
        //update info
         //self.view.backgroundColor = [UIColor whiteColor];
        _previousButton.hidden = NO;
        _nextButton.hidden = NO;
        _saveInfo.hidden = YES;
        _errorMsg.hidden = YES;
        _updateButton.hidden = NO;
        
        Student *currentStudent = [_studentList objectAtIndex: _count];
        _StudentNameTxt.text = currentStudent.studentName;
        _StudentAddressTxt.text = currentStudent.studentAddress;
        _MidtermTxt.text = [NSString stringWithFormat: @"%d", currentStudent.midterm];
        _FinalTxt.text = [NSString stringWithFormat: @"%d", currentStudent.studentFinal];
        _HW1Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW1];
        _HW2Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW2];
        _HW3Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW3];
        
        [self.delegate signInViewController:self
           didEnterName:currentStudent.studentName
        didEnterAddress:currentStudent.studentAddress
        didEnterMidterm:currentStudent.midterm
           didEnterFinal:currentStudent.studentFinal
            didEnterHW1:currentStudent.HW1
            didEnterHW2:currentStudent.HW2
            didEnterHW3:currentStudent.HW3
            didImage:currentStudent.studentImage];
        
            
        
    
    }
    else if(_updateSegCtrl.selectedSegmentIndex==1){
        
        
        
        [self performSegueWithIdentifier:@"studentInfoView" sender:self];
        _updateSegCtrl.selectedSegmentIndex =0;
        _previousButton.hidden = NO;
               _nextButton.hidden = NO;
               _saveInfo.hidden = YES;
               _errorMsg.hidden = YES;
               _updateButton.hidden = NO;
               
               Student *currentStudent = [_studentList objectAtIndex: _count];
               _StudentNameTxt.text = currentStudent.studentName;
               _StudentAddressTxt.text = currentStudent.studentAddress;
               _MidtermTxt.text = [NSString stringWithFormat: @"%d", currentStudent.midterm];
               _FinalTxt.text = [NSString stringWithFormat: @"%d", currentStudent.studentFinal];
               _HW1Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW1];
               _HW2Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW2];
               _HW3Txt.text = [NSString stringWithFormat: @"%d", currentStudent.HW3];
               
               [self.delegate signInViewController:self
                  didEnterName:currentStudent.studentName
               didEnterAddress:currentStudent.studentAddress
               didEnterMidterm:currentStudent.midterm
                  didEnterFinal:currentStudent.studentFinal
                   didEnterHW1:currentStudent.HW1
                   didEnterHW2:currentStudent.HW2
                   didEnterHW3:currentStudent.HW3
                   didImage:currentStudent.studentImage];
               
        
    }
    else{
        //new student
        //self.view.backgroundColor = [UIColor lightGrayColor];
        _previousButton.hidden = YES;
        _nextButton.hidden = YES;
        _saveInfo.hidden = NO;
        _updateButton.hidden = YES;
        _errorMsg.hidden = YES;

        _StudentNameTxt.text = nil;
        _StudentAddressTxt.text = nil;
        _MidtermTxt.text = nil;
        _FinalTxt.text = nil;
        _HW1Txt.text = nil;
        _HW2Txt.text = nil;
        _HW3Txt.text = nil;
        
    
    }
}
- (IBAction)addOne:(UIButton *)sender {
    _previousButton.enabled = YES;
    _count+=1;
    if (_count <_size){
        [self.ctrlSlider setValue:ceil(_count*256/(_size-1))];
        Student *nextStudent = [_studentList objectAtIndex: _count];
        _StudentNameTxt.text = nextStudent.studentName;
        _StudentAddressTxt.text = nextStudent.studentAddress;
        _MidtermTxt.text = [NSString stringWithFormat: @"%d", nextStudent.midterm];
        _FinalTxt.text = [NSString stringWithFormat: @"%d", nextStudent.studentFinal];
        _HW1Txt.text = [NSString stringWithFormat: @"%d", nextStudent.HW1];
        _HW2Txt.text = [NSString stringWithFormat: @"%d", nextStudent.HW2];
        _HW3Txt.text = [NSString stringWithFormat: @"%d", nextStudent.HW3];
        if (_count == _size-1){
            _nextButton.enabled = NO;
        }
    }

}
- (IBAction)minusOne:(UIButton *)sender {
    _nextButton.enabled = YES;
    _count-=1;
    if (_count >=0){
         [self.ctrlSlider setValue:ceil(256*_count/(_size-1))];
        Student *previousStudent = [_studentList objectAtIndex: _count];
        _StudentNameTxt.text = previousStudent.studentName;
        _StudentAddressTxt.text = previousStudent.studentAddress;
        _MidtermTxt.text = [NSString stringWithFormat: @"%d", previousStudent.midterm];
        _FinalTxt.text = [NSString stringWithFormat: @"%d", previousStudent.studentFinal];
        _HW1Txt.text = [NSString stringWithFormat: @"%d", previousStudent.HW1];
        _HW2Txt.text = [NSString stringWithFormat: @"%d", previousStudent.HW2];
        _HW3Txt.text = [NSString stringWithFormat: @"%d", previousStudent.HW3];
        if (_count == 0){
            _previousButton.enabled = NO;
        }
    }

}
- (IBAction)sliderChange:(UISlider *)sender {
    
    _count = round((_size-1)*self.ctrlSlider.value/256);
    
    if (_count ==0){
        _previousButton.enabled = NO;
        _nextButton.enabled = YES;
    }
    else if (_count == _size-1){
        _nextButton.enabled = NO;
        _previousButton.enabled = YES;
    }
    else{
        _nextButton.enabled = YES;
        _previousButton.enabled = YES;
        
    }

    
        Student *nowStudent = [_studentList objectAtIndex: _count];
        _StudentNameTxt.text = nowStudent.studentName;
        _StudentAddressTxt.text = nowStudent.studentAddress;
        _MidtermTxt.text = [NSString stringWithFormat: @"%d", nowStudent.midterm];
        _FinalTxt.text = [NSString stringWithFormat: @"%d", nowStudent.studentFinal];
        _HW1Txt.text = [NSString stringWithFormat: @"%d", nowStudent.HW1];
        _HW2Txt.text = [NSString stringWithFormat: @"%d", nowStudent.HW2];
        _HW3Txt.text = [NSString stringWithFormat: @"%d", nowStudent.HW3];
        

}


- (void)saveNewStudentInfo {
 
    [self.delegate signInViewController:self
                           didEnterName:self.StudentNameTxt.text
                        didEnterAddress:self.StudentAddressTxt.text
                        didEnterMidterm:self.MidtermTxt.text.intValue
                           didEnterFinal:self.FinalTxt.text.intValue
                            didEnterHW1:self.HW1Txt.text.intValue
                            didEnterHW2:self.HW2Txt.text.intValue
                            didEnterHW3:self.HW3Txt.text.intValue
                            didImage:[UIImage imageNamed:@"image not available.png"]];
     
    Student *newStudent = nil;
           newStudent = [[Student alloc] init];
           newStudent.studentName = self.StudentNameTxt.text;
           newStudent.studentAddress = self.StudentAddressTxt.text;
           newStudent.midterm = self.MidtermTxt.text.intValue;
           newStudent.studentFinal = self.FinalTxt.text.intValue;
           newStudent.HW1 = self.HW1Txt.text.intValue;
           newStudent.HW2 = self.HW2Txt.text.intValue;
           newStudent.HW3 = self.HW3Txt.text.intValue;
           newStudent.studentImage = [UIImage imageNamed:@"image not available.png"];
           
           [_studentList addObject:newStudent];
           _size++;
    //NSLog(@"added");
    }



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
   
    
    [self saveNewStudentInfo];
    return YES;

    
}

- (IBAction)saveButton:(UIButton *)sender {
    
    if(_StudentNameTxt.text.length > 0 && _StudentAddressTxt.text.length > 0 && _MidtermTxt.text.length > 0 &&_FinalTxt.text.length > 0 && _HW1Txt.text.length > 0 && _HW2Txt.text.length > 0 && _HW3Txt.text.length > 0){
         [self saveNewStudentInfo];
        _StudentNameTxt.text = nil;
            _StudentAddressTxt.text = nil;
            _MidtermTxt.text = nil;
            _FinalTxt.text = nil;
            _HW1Txt.text = nil;
            _HW2Txt.text = nil;
            _HW3Txt.text = nil;
        _errorMsg.hidden = YES;
        }
    else{
        _errorMsg.hidden = NO;
        _errorMsg.text = @"Information not complete";
    }
    
}

- (void)updateStudentInfo {
    [self.delegate updateViewController:self
                              didEnterName:self.StudentNameTxt.text
                           didEnterAddress:self.StudentAddressTxt.text
                           didEnterMidterm:self.MidtermTxt.text.intValue
                              didEnterFinal:self.FinalTxt.text.intValue
                               didEnterHW1:self.HW1Txt.text.intValue
                               didEnterHW2:self.HW2Txt.text.intValue
                               didEnterHW3:self.HW3Txt.text.intValue];
   
    Student *nowStudent = [_studentList objectAtIndex: _count];
    nowStudent.studentName = self.StudentNameTxt.text;
    nowStudent.studentAddress = self.StudentAddressTxt.text;
    nowStudent.midterm = self.MidtermTxt.text.intValue;
    nowStudent.studentFinal = self.FinalTxt.text.intValue;
    nowStudent.HW1 = self.HW1Txt.text.intValue;
    nowStudent.HW2 = self.HW2Txt.text.intValue;
    nowStudent.HW3 = self.HW3Txt.text.intValue;
    
}

- (IBAction)saveUpdate:(UIButton *)sender {
       if(_StudentNameTxt.text.length > 0 && _StudentAddressTxt.text.length > 0 && _MidtermTxt.text.length > 0 &&_FinalTxt.text.length > 0 && _HW1Txt.text.length > 0 && _HW2Txt.text.length > 0 && _HW3Txt.text.length > 0){
            [self updateStudentInfo];
           _errorMsg.hidden = YES;
           }
       else{
           _errorMsg.hidden = NO;
           _errorMsg.text = @"Information not complete";
       }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    
    
    InfoViewController *infoVC= segue.destinationViewController;
    infoVC.displayStudent=[_studentList objectAtIndex: _count];
}
    


@end
