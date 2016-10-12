//
//  ViewController.h
//  WhereAmI
//
//  Created by Student P_05 on 12/10/16.
//  Copyright © 2016 Ritesh Patil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface ViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
{
    CLLocationManager *myLocationmanager;
}
@property (strong, nonatomic) IBOutlet MKMapView *myMapView;
@property (strong, nonatomic) IBOutlet UILabel *labelLatitude;
@property (strong, nonatomic) IBOutlet UILabel *labelLongitude;
@property (strong, nonatomic) IBOutlet UILabel *Altitudelabel;
@property (strong, nonatomic) IBOutlet UILabel *Speedlabel;
- (IBAction)StartLocatingButton:(id)sender;


@end

