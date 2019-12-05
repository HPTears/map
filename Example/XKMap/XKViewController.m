//
//  XKViewController.m
//  XKMap
//
//  Created by 459834127@qq.com on 07/15/2019.
//  Copyright (c) 2019 459834127@qq.com. All rights reserved.
//

#import "XKViewController.h"
#import <XKMap.h>

@interface XKViewController ()<XKMapLocationDelegate>
@property (nonatomic, strong) UILabel *label;


@end

@implementation XKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.frame = CGRectMake(50, 100, 250, 200);
    [self.view addSubview:self.label];
    
    [[[XKMapManager getCurrentMapFactory] getMapLocation] setLocationDelegate:self];
    [[[XKMapManager getCurrentMapFactory] getMapLocation] startBaiduSingleLocationService];

}


#pragma mark - XKMapLocationDelegate

- (void)userLocationLaititude:(double)laititude longtitude:(double)longtitude {
    NSLog(@"定位成功，%f, %f", laititude, longtitude);
}

- (void)userLocationCountry:(NSString *)country state:(NSString *)state city:(NSString *)city subLocality:(NSString *)subLocality name:(NSString *)name {
    
    NSLog(@"定位成功，%@, %@, %@, %@, %@", country, state, city, subLocality, name);
    
    self.label.text = [NSString stringWithFormat:@"当前位置-%@, %@, %@, %@, %@", country, state, city, subLocality, name];
}

- (void)failToLocateUserWithError:(NSError *)error {
    NSLog(@"定位失败");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.numberOfLines = 0;
        _label.textColor = [UIColor whiteColor];
        _label.font = [UIFont systemFontOfSize:17];
        _label.backgroundColor = [UIColor blackColor];
    }
    return _label;
}
@end
