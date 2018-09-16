//
//  ViewController.m
//  vgs-ios-demo
//
//  Created by Gordon Young on 9/16/18.
//  © 2018 Gordon Young. All rights reserved.
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

//Our HTTPPost button handler
- (IBAction)httpPost:(UIButton *)sender {

    NSError *error;
    NSString *urlString = @"https://nghttp2.org/httpbin/post";
    NSURL *url = [NSURL URLWithString:urlString];
    
    // below code is to set proxy from code
    NSString *hostKey =@"tntlvnzzqsz.SANDBOX.verygoodproxy.com";
    NSString *portKey=@"8080";
    
    hostKey = (NSString *)kCFStreamPropertyHTTPSProxyHost;
    portKey = (NSString *)kCFStreamPropertyHTTPSProxyPort;
    
    //set http or https proxy, change "localhost" to your proxy host, change "5566" to your proxy port
    NSMutableDictionary *proxyToUse = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"localhost",hostKey,[NSNumber numberWithInt:5566],portKey,nil];
    
//    CFReadStreamSetProperty(myReadStream, kCFStreamPropertyHTTPProxy, proxyToUse);
//    CFReadStreamOpen(myReadStream);
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setHTTPMethod:@"POST"];
    [request setURL:url];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

    NSData *postData;

    [request setHTTPBody:postData];
    NSData *finalDataToDisplay = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];

    NSMutableDictionary *abc = [NSJSONSerialization JSONObjectWithData:finalDataToDisplay options:NSJSONReadingMutableContainers error:&error];
    
    NSLog(@"%@", abc);

}


@end
