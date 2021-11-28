//
//  OCMusicXMLParserImpl.h
//  OCMusicXMLParser
//
//  Created by SuXinDe on 2021/11/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OCMusicXMLDictionaryParser : NSObject

- (instancetype)initWithData:(NSData *)data;

- (instancetype)initWithString:(NSString *)xml;

- (NSDictionary *)result;

@end

NS_ASSUME_NONNULL_END

