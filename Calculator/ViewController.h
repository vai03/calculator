//
//  ViewController.h
//  Calculator
//
//  Created by Vai on 8/06/2014.
//  Copyright (c) 2014 coba. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{Add, Substract, Multiply, Division} Operation;

@interface ViewController : UIViewController{
    IBOutlet UITextField *display;
    NSString * storage;
    Operation currentOp;
    Boolean clear;
    
 
}

-(IBAction)oneButton:(id)sender;
-(IBAction)twoButton:(id)sender;
-(IBAction)threeButton:(id)sender;
-(IBAction)fourButton:(id)sender;
-(IBAction)fiveButton:(id)sender;
-(IBAction)sixButton:(id)sender;
-(IBAction)sevenButton:(id)sender;
-(IBAction)eigthButton:(id)sender;
-(IBAction)nineButton:(id)sender;
-(IBAction)zeroButton:(id)sender;

-(IBAction)clearButton:(id)sender;
-(IBAction)delButton:(id)sender;

-(IBAction)equalButton:(id)sender;
-(IBAction)addButton:(id)sender;
-(IBAction)subButton:(id)sender;
-(IBAction)mulButton:(id)sender;
-(IBAction)divButton:(id)sender;

-(void) reset;
-(void) calcAnswer;

@end
