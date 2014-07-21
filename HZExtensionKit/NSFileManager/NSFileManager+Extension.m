//
//  NSFileManager+Extension.m
//  HZExtensionKit
//
//  Created by History on 14-4-27.
//  Copyright (c) 2014年 History. All rights reserved.
//

#import "NSFileManager+Extension.h"

@implementation NSFileManager (Extension)
+ (NSString *)cacheDirectory
{
    NSArray *cache = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cachePath = [cache objectAtIndex:0];
	return cachePath;
}
+ (BOOL)isFileExists:(NSString *)path
{
    NSFileManager *filemanager = [NSFileManager defaultManager];
	return [filemanager fileExistsAtPath:path];
}
+ (NSString *)documentDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return docDir;
}
+ (BOOL)createDirectoryAtPath:(NSString *)path
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	BOOL success = [fileManager createDirectoryAtPath:path withIntermediateDirectories:NO attributes:nil error:&error];
	if (!success) {
		
	}
	return success;
}
+ (BOOL)deleteFileAtPath:(NSString *)path
{
    NSFileManager *filemanager = [NSFileManager defaultManager];
	NSError *error;
	BOOL success = [filemanager removeItemAtPath:path error:&error];
	if (!success) {
	}
	return success;
}
+ (BOOL)copyFileTo:(NSString *)to from:(NSString *)from
{
    BOOL success = NO;
    if (![NSFileManager isFileExists:from]) {
        success = NO;
    }
    else {
        NSFileManager *filemanager = [NSFileManager defaultManager];
        NSError *error;
        success = [filemanager copyItemAtPath:from toPath:to error:&error];
        if (!success) {
        }
    }
	return success;
}
+ (long long)fileSizeAtPath:(NSString *)path
{
    NSFileManager* manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:path]) {
        return [[manager attributesOfItemAtPath:path error:nil] fileSize];
    }
    return 0;
}
+ (CGFloat)folderSizeAtPath:(NSString *)path
{
    if (![NSFileManager isFileExists:path]) {
        return 0;
    }
    NSEnumerator *childFilesEnumerator = [[[NSFileManager defaultManager] subpathsAtPath:path] objectEnumerator];
    NSString* fileName;
    long long folderSize = 0;
    while ((fileName = [childFilesEnumerator nextObject]) != nil){
        NSString* fileAbsolutePath = [path stringByAppendingPathComponent:fileName];
        folderSize += [NSFileManager fileSizeAtPath:fileAbsolutePath];
    }
    return folderSize / (1024.0 * 1024.0);
}
+ (void)deleteAllFilesAtFloder:(NSString *)path
{
    if (![NSFileManager isFileExists:path]) {
        return ;
    }
    NSEnumerator *childFilesEnumerator = [[[NSFileManager defaultManager] subpathsAtPath:path] objectEnumerator];
    NSString* fileName;
    while ((fileName = [childFilesEnumerator nextObject]) != nil){
        NSString* fileAbsolutePath = [path stringByAppendingPathComponent:fileName];
        [NSFileManager deleteAllFilesAtFloder:fileAbsolutePath];
    }
}
@end
