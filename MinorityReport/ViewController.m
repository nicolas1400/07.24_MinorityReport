//
//  ViewController.m
//  MinorityReport
//
//  Created by Nicolas Semenas on 24/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *theFuture;
@property (weak, nonatomic) IBOutlet UILabel *thePrecog;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onDrag:(UIPanGestureRecognizer *)panGestureRecognizer
{
    CGPoint point = [panGestureRecognizer translationInView:self.view];
    
    self.theFuture.transform = CGAffineTransformMakeTranslation(point.x, point.y);
    
    point.x = point.x + self.theFuture.center.x;
    point.y += self.theFuture.center.y;
    
    NSLog(@"x = %f and y = %f ", point.x, point.y);
    
    if (CGRectContainsPoint(self.thePrecog.frame, point))
    {
        self.theFuture.text = @"A ficticious and incriminating future..."  ;
        self.theFuture.backgroundColor = [UIColor redColor];
        [self.theFuture sizeToFit];
    }
    
    NSLog(@"x = %f and y = %f ", self.theFuture.center.x, self.theFuture.center.y);
    
    

}



@end
