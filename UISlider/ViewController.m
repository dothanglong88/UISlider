//
//  ViewController.m
//  UISlider
//
//  Created by Xmob - Longdt on 5/6/16.
//  Copyright © 2016 Xmob - Longdt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *slider;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    slider.transform = CGAffineTransformMakeRotation(M_PI_4);
    slider.tintColor = [UIColor blueColor];
    slider.thumbTintColor = [UIColor yellowColor];
    [slider setThumbImage:[UIImage imageNamed:@"green.png"] forState:UIControlStateNormal];
}

-(void) onTimer{
    slider.value += 0.05;
    if (slider.value >= 1.0){
        slider.value = 1.0;
        [_timer invalidate];
    }
    
}

@end
