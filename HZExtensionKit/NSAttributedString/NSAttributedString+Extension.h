//
//  NSAttributedString+Extension.h
//  HZExtensionKit
//
//  Created by History on 14-9-4.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (Extension)

@end

@interface NSMutableAttributedString (Extension)
- (void)setFont:(UIFont *)font NS_AVAILABLE_IOS(6_0);
- (void)setFont:(UIFont *)font range:(NSRange)range NS_AVAILABLE_IOS(6_0);

- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle NS_AVAILABLE_IOS(6_0);

- (void)setForegroundColor:(UIColor *)color range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setForegroundColor:(UIColor *)color NS_AVAILABLE_IOS(6_0);

- (void)setBackgroundColor:(UIColor *)color range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setBackgroundColor:(UIColor *)color NS_AVAILABLE_IOS(6_0);

- (void)setLigature:(NSInteger)ligature range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setLigature:(NSInteger)ligature NS_AVAILABLE_IOS(6_0);

- (void)setKern:(CGFloat)kern range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setKern:(CGFloat)kern NS_AVAILABLE_IOS(6_0);

- (void)setStrikethroughStyle:(NSInteger)strikethroughStyle range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setStrikethroughStyle:(NSInteger)strikethroughStyle NS_AVAILABLE_IOS(6_0);

- (void)setUnderlineStyle:(NSUnderlineStyle)style range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setUnderlineStyle:(NSUnderlineStyle)style NS_AVAILABLE_IOS(6_0);

- (void)setStrokeColor:(UIColor *)color range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setStrokeColor:(UIColor *)color NS_AVAILABLE_IOS(6_0);

- (void)setStrokeWidth:(CGFloat)width range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setStrokeWidth:(CGFloat)width NS_AVAILABLE_IOS(6_0);

- (void)setShadow:(NSShadow *)shadow range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setShadow:(NSShadow *)shadow NS_AVAILABLE_IOS(6_0);

- (void)setTextEffect:(NSString *)textEffect range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setTextEffect:(NSString *)textEffect NS_AVAILABLE_IOS(7_0);

- (void)insertImageAttachment:(UIImage *)image atIndex:(NSInteger)index NS_AVAILABLE_IOS(7_0);

- (void)setLink:(NSURL *)linkURL range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setLink:(NSURL *)linkURL NS_AVAILABLE_IOS(7_0);

- (void)setBaselineOffset:(CGFloat)offset range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setBaselineOffset:(CGFloat)offset NS_AVAILABLE_IOS(7_0);

- (void)setUnderlineColor:(UIColor *)color range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setUnderlineColor:(UIColor *)color NS_AVAILABLE_IOS(7_0);

- (void)setStrikethroughColor:(UIColor *)color range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setStrikethroughColor:(UIColor *)color NS_AVAILABLE_IOS(7_0);

- (void)setObliqueness:(CGFloat)obliqueness range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setObliqueness:(CGFloat)obliqueness NS_AVAILABLE_IOS(7_0);

- (void)setExpansion:(CGFloat)expansion range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setExpansion:(CGFloat)expansion NS_AVAILABLE_IOS(7_0);

- (void)setWritingDirection:(NSInteger)direction range:(NSRange)range NS_AVAILABLE_IOS(7_0);
- (void)setWritingDirection:(NSInteger)direction NS_AVAILABLE_IOS(7_0);

- (void)setVerticalGlyphForm:(NSInteger)glyphForm range:(NSRange)range NS_AVAILABLE_IOS(6_0);
- (void)setVerticalGlyphForm:(NSInteger)glyphForm NS_AVAILABLE_IOS(6_0);
@end