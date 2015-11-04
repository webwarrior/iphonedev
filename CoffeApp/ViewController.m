//
//  ViewController.m
//  CoffeApp
//
//  Created by Shaun O'Reilly on 3/11/2015.
//  Copyright © 2015 Visual Recruit Pty Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButtonPressed:(id)sender {
    NSLog(@"Calculate Presssed");
    
    float water = [[self.waterTextField text] floatValue];
    float ratio = [[self.ratioTextField text] floatValue];
    
    NSLog(@"water: %f ratio: %f",water,ratio);
    
    float coffee = water / ratio;
    NSLog(@"Coffee: %f",coffee);
    
    NSString *coffeeText = [NSString stringWithFormat:@"%f",coffee];
    
    self.coffeeTextField.text = coffeeText;
    
    NSLocale* currentLocale = [NSLocale currentLocale];
    [[NSDate date] descriptionWithLocale:currentLocale];
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    
    self.statusLabel.text =  [@"calculated at:\n" stringByAppendingString:dateString];
    
    self.pictureImage.image = [UIImage imageNamed:@"Damien"];
    self.descriptionLabel.text = @"The best iOS developer!";
    
    // Some test
    
    
    NSURL *url = [NSURL URLWithString:@"http://www.myobexo.me/iphone/json.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response,
                                               NSData *data, NSError *connectionError)
     {
         if (data.length > 0 && connectionError == nil)
         {
             NSDictionary *greeting = [NSJSONSerialization JSONObjectWithData:data
                                                                      options:0
                                                                        error:NULL];
             
             
             
             self.greetingId.text = [[greeting objectForKey:@"id"] stringValue];
             self.greetingContent.text = [greeting objectForKey:@"content"];
             
             NSString *contentText = [NSString stringWithFormat:@"%@",self.greetingContent.text];
             NSLog(@"Content: %@",contentText);
             
         }
     }];
    
    
}
@end
