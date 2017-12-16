#import "ViewController.h"
#include <stdio.h>
#include "async_wake.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    self.tfp.text = [NSString stringWithFormat:@"tfp: %x"];
    self.resLabel.text = [NSString stringWithFormat:@"Press 'Go' and wait around 10 seconds.\nExploit by Ian Beer \nResolution Changer by benjiboobs \nSmall changes by /u/Mikeryck"];
    [self.goButton setTitle:@"Go" forState:UIControlStateNormal];
}



- (void)didReceiveMemoryWarning {
  printf("******* received memory warning! ***********\n");
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)handleGoClick:(id)sender {
    go();
    
    NSString *title = @"Resolution Changed";
    NSString *message = @"Please reboot device";
    NSString *okText = @"Ok";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText style:UIAlertActionStyleCancel handler:nil];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
