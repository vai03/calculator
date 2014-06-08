//
//  ViewController.m
//  Calculator
//
//  Created by Vai on 8/06/2014.
//  Copyright (c) 2014 coba. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)oneButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@1",display.text];
}
-(IBAction)twoButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@2",display.text];
}
-(IBAction)threeButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@3",display.text];
}
-(IBAction)fourButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@4",display.text];
}
-(IBAction)fiveButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@5",display.text];
}
-(IBAction)sixButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@6",display.text];
}
-(IBAction)sevenButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@7",display.text];
}
-(IBAction)eigthButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@8",display.text];
}
-(IBAction)nineButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@9",display.text];
}
-(IBAction)zeroButton:(id)sender{
    [self reset];
    
    display.text = [NSString stringWithFormat:@"%@0",display.text];
}

-(IBAction)clearButton:(id)sender{
    display.text = @"";
}
-(IBAction)delButton:(id)sender{
    if (display.text.length>0){
      display.text = [display.text substringToIndex:display.text.length-1];
    }
}

-(IBAction)equalButton:(id)sender{
    [self calcAnswer];
    clear = true;
}
-(IBAction)addButton:(id)sender{
    currentOp = Add;
    storage = display.text;
    clear = true;
}
-(IBAction)subButton:(id)sender{
    currentOp = Substract;
    storage = display.text;
    clear = true;
}
-(IBAction)mulButton:(id)sender{
    currentOp = Multiply;
    storage = display.text;
    clear = true;
}
-(IBAction)divButton:(id)sender{
    currentOp = Division;
    storage = display.text;
    clear = true;
}

-(void) reset{
    if (clear == true){
        display.text = @"";
        clear = false;
    }
}

-(void) calcAnswer{
    NSString *val = display.text;
    
    switch(currentOp){
        case Add:
            display.text = [NSString stringWithFormat:@"%qi", [val longLongValue] + [storage longLongValue]];
            break;
        case Substract:
            display.text = [NSString stringWithFormat:@"%qi", [storage longLongValue] - [storage longLongValue]];
            break;
        case Multiply:
            display.text = [NSString stringWithFormat:@"%qi", [val longLongValue] * [storage longLongValue]];
            break;
        case Division:
            display.text = [NSString stringWithFormat:@"%qi", [storage longLongValue] / [storage longLongValue]];
            break;
            
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    clear = false;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
