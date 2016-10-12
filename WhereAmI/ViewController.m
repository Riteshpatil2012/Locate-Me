//
//  ViewController.m
//  WhereAmI
//
//  Created by Student P_05 on 12/10/16.
//  Copyright © 2016 Ritesh Patil. All rights reserved.
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

-(void)startlocating {
    myLocationmanager = [[CLLocationManager alloc]init];
    myLocationmanager.delegate = self;
    [myLocationmanager setDesiredAccuracy:kCLLocationAccuracyBest];
    [myLocationmanager requestWhenInUseAuthorization];
    [myLocationmanager startUpdatingLocation];
    
    
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation *currentLocation = [locations lastObject];
    NSLog(@"Latitude : %f",currentLocation.coordinate.latitude);
    NSLog(@"Longitude : %f",currentLocation.coordinate.longitude);
//    NSLog(@"Altitude : %f",currentLocation.coordinate,)
    
    MKCoordinateSpan mySpan = MKCoordinateSpanMake(0.001, 0.001);
    MKCoordinateRegion myRegion = MKCoordinateRegionMake(currentLocation.coordinate,mySpan);
    [self.myMapView setRegion:myRegion animated:YES];
    
    if (currentLocation !=nil) {
        [myLocationmanager stopUpdatingLocation];

    }
    
}
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"%@",error.localizedDescription);
    
}


- (IBAction)StartLocatingButton:(id)sender {
    [self startlocating];
}
@end
