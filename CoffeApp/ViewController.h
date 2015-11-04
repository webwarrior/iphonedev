//
//  ViewController.h
//  CoffeApp
//
//  Created by Shaun O'Reilly on 3/11/2015.
//  Copyright © 2015 Visual Recruit Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *waterTextField;
@property (weak, nonatomic) IBOutlet UITextField *ratioTextField;
@property (weak, nonatomic) IBOutlet UITextField *coffeeTextField;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pictureImage;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *greetingId;
@property (weak, nonatomic) IBOutlet UILabel *greetingContent;

- (IBAction)calculateButtonPressed:(id)sender;

@end

