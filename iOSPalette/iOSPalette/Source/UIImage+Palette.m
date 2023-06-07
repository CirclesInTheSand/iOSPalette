//
//  UIImage+Palette.m
//  Atom
//
//  Created by dylan.tang on 17/4/20.
//  Copyright © 2017年 dylan.tang All rights reserved.
//

#import "UIImage+Palette.h"

@implementation UIImage (Palette)

- (void)getPaletteImageColor:(GetColorBlock)block{
    [self getPaletteImageColorWithMode:DEFAULT_NON_MODE_PALETTE withCallBack:block];
    
}

- (void)getPaletteImageColorWithMode:(PaletteTargetMode)mode withCallBack:(GetColorBlock)block{
    Palette *palette = [[Palette alloc]initWithImage:self];
    [palette startToAnalyzeForTargetMode:mode withCallBack:block];
}

- (void)getFilmMainColor:(void (^)(UIColor *color, NSDictionary *colorDic, NSError *error))colorBlock {
    
    [self getPaletteImageColorWithMode:ALL_MODE_PALETTE withCallBack:^(PaletteColorModel *recommendColor, NSDictionary *allModeColorDic, NSError *error) {
        NSArray *colorKeysArr = @[@"light_vibrant", @"light_muted", @"vibrant", @"muted", @"dark_vibrant", @"dark_muted"];
        
        for(NSString *colorKey in colorKeysArr) {
            PaletteColorModel *model = allModeColorDic[colorKey];
            if([model isKindOfClass:PaletteColorModel.class]) {
                colorBlock(model.color, allModeColorDic, error);
                return;
            }
        }
        
        colorBlock(nil, allModeColorDic, error);
    }];

}

@end
