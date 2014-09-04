//
//  NSAttributedString+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-9-4.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSAttributedString+Extension.h"

@interface HZTextAttachment : NSTextAttachment

@end

@implementation HZTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex NS_AVAILABLE_IOS(7_0)
{
    return CGRectMake( 0, 0, lineFrag.size.height, lineFrag.size.height);
}

@end

@implementation NSAttributedString (Extension)

@end

@implementation NSMutableAttributedString (Extension)

- (void)setFont:(UIFont *)font
{
    [self setFont:font range:NSMakeRange(0, self.length)];
}
- (void)setFont:(UIFont *)font range:(NSRange)range
{
    [self addAttributes:@{NSFontAttributeName: font} range:range];
}

- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range
{
    [self addAttributes:@{NSParagraphStyleAttributeName: paragraphStyle} range:range];
}
- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle
{
    [self setParagraphStyle:paragraphStyle range:NSMakeRange(0, self.length)];
}

- (void)setForegroundColor:(UIColor *)color range:(NSRange)range
{
    [self addAttributes:@{NSForegroundColorAttributeName: color} range:range];
}
- (void)setForegroundColor:(UIColor *)color
{
    [self addAttributes:@{NSForegroundColorAttributeName: color} range:NSMakeRange(0, self.length)];
}

- (void)setBackgroundColor:(UIColor *)color range:(NSRange)range
{
    [self addAttributes:@{NSBackgroundColorAttributeName: color} range:range];
}
- (void)setBackgroundColor:(UIColor *)color
{
    [self setBackgroundColor:color range:NSMakeRange(0, self.length)];
}

- (void)setLigature:(NSInteger)ligature range:(NSRange)range
{
    [self addAttributes:@{NSLigatureAttributeName: @(ligature)} range:range];
}
- (void)setLigature:(NSInteger)ligature
{
    [self setLigature:ligature range:NSMakeRange(0, self.length)];
}

- (void)setKern:(CGFloat)kern range:(NSRange)range
{
    [self addAttributes:@{NSKernAttributeName: @(kern)} range:range];
}
- (void)setKern:(CGFloat)kern
{
    [self setKern:kern range:NSMakeRange(0, self.length)];
}

- (void)setStrikethroughStyle:(NSInteger)strikethroughStyle range:(NSRange)range
{
    [self addAttributes:@{NSStrikethroughStyleAttributeName: @(strikethroughStyle)} range:range];
}
- (void)setStrikethroughStyle:(NSInteger)strikethroughStyle
{
    [self setStrikethroughStyle:strikethroughStyle range:NSMakeRange(0, self.length)];
}

- (void)setUnderlineStyle:(NSUnderlineStyle)style range:(NSRange)range
{
    [self addAttributes:@{NSUnderlineStyleAttributeName: @(style)} range:range];
}
- (void)setUnderlineStyle:(NSUnderlineStyle)style
{
    [self setUnderlineStyle:style range:NSMakeRange(0, self.length)];
}

- (void)setStrokeColor:(UIColor *)color range:(NSRange)range
{
    [self addAttributes:@{NSStrokeColorAttributeName: color} range:range];
}
- (void)setStrokeColor:(UIColor *)color
{
    [self setStrokeColor:color range:NSMakeRange(0, self.length)];
}

- (void)setStrokeWidth:(CGFloat)width range:(NSRange)range
{
    [self addAttributes:@{NSStrokeWidthAttributeName: @(width)} range:range];
}
- (void)setStrokeWidth:(CGFloat)width
{
    [self setStrokeWidth:width range:NSMakeRange(0, self.length)];
}

- (void)setShadow:(NSShadow *)shadow range:(NSRange)range
{
    [self addAttributes:@{NSShadowAttributeName: shadow} range:range];
}
- (void)setShadow:(NSShadow *)shadow
{
    [self setShadow:shadow range:NSMakeRange(0, self.length)];
}

- (void)setTextEffect:(NSString *)textEffect range:(NSRange)range
{
    [self addAttributes:@{NSTextEffectAttributeName: textEffect} range:range];
}
- (void)setTextEffect:(NSString *)textEffect
{
    [self setTextEffect:textEffect range:NSMakeRange(0, self.length)];
}

- (void)insertAttachment:(NSTextAttachment *)textAttachment atIndex:(NSInteger)index  NS_AVAILABLE_IOS(7_0)
{
    [self insertAttributedString:[NSAttributedString attributedStringWithAttachment:textAttachment] atIndex:index];
}
- (void)insertImageAttachment:(UIImage *)image atIndex:(NSInteger)index
{
    NSTextAttachment *attachment = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
    attachment.image = image;
    [self insertAttachment:attachment atIndex:index];
}

- (void)setLink:(NSURL *)linkURL range:(NSRange)range
{
    [self addAttributes:@{NSLinkAttributeName: linkURL} range:range];
}
- (void)setLink:(NSURL *)linkURL
{
    [self setLink:linkURL range:NSMakeRange(0, self.length)];
}

- (void)setBaselineOffset:(CGFloat)offset range:(NSRange)range
{
    [self addAttributes:@{NSBaselineOffsetAttributeName: @(offset)} range:range];
}
- (void)setBaselineOffset:(CGFloat)offset
{
    [self setBaselineOffset:offset range:NSMakeRange(0, self.length)];
}

- (void)setUnderlineColor:(UIColor *)color range:(NSRange)range
{
    [self addAttributes:@{NSUnderlineColorAttributeName: color} range:range];
}
- (void)setUnderlineColor:(UIColor *)color
{
    [self setUnderlineColor:color range:NSMakeRange(0, self.length)];
}

- (void)setStrikethroughColor:(UIColor *)color range:(NSRange)range
{
    [self addAttributes:@{NSStrikethroughColorAttributeName: color} range:range];
}
- (void)setStrikethroughColor:(UIColor *)color
{
    [self setStrikethroughColor:color range:NSMakeRange(0, self.length)];
}

- (void)setObliqueness:(CGFloat)obliqueness range:(NSRange)range
{
    [self addAttributes:@{NSObliquenessAttributeName: @(obliqueness)} range:range];
}
- (void)setObliqueness:(CGFloat)obliqueness
{
    [self setObliqueness:obliqueness range:NSMakeRange(0, self.length)];
}

- (void)setExpansion:(CGFloat)expansion range:(NSRange)range
{
    [self addAttributes:@{NSObliquenessAttributeName: @(expansion)} range:range];
}
- (void)setExpansion:(CGFloat)expansion
{
    [self setExpansion:expansion range:NSMakeRange(0, self.length)];
}

- (void)setWritingDirection:(NSInteger)direction range:(NSRange)range
{
    [self addAttributes:@{NSWritingDirectionAttributeName: @(direction)} range:range];
}
- (void)setWritingDirection:(NSInteger)direction
{
    [self setWritingDirection:direction range:NSMakeRange(0, self.length)];
}

- (void)setVerticalGlyphForm:(NSInteger)glyphForm range:(NSRange)range
{
    [self addAttributes:@{NSVerticalGlyphFormAttributeName: @(glyphForm)} range:range];
}
- (void)setVerticalGlyphForm:(NSInteger)glyphForm
{
    [self setVerticalGlyphForm:glyphForm range:NSMakeRange(0, self.length)];
}
@end