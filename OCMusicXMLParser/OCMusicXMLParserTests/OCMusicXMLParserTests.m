//
//  OCMusicXMLParserTests.m
//  OCMusicXMLParserTests
//
//  Created by SuXinDe on 2021/11/28.
//

#import <XCTest/XCTest.h>
#import <OCMusicXMLParser/OCMusicXMLParser.h>

@interface OCMusicXMLParserTests : XCTestCase

@property (nonatomic, strong) NSDictionary *xmlDict;

@end

@implementation OCMusicXMLParserTests

- (void)test {
    
    NSBundle *bundle = [NSBundle bundleForClass:[OCMusicXMLParserTests class]];
    NSString *path = [bundle pathForResource:@"test" ofType:@"xml"];
    
    NSData *xmlData = [NSData dataWithContentsOfFile:path];
    
    self.xmlDict = [self dictionaryWithXML:xmlData];
    
    NSLog(@"%@",self.xmlDict);
    NULL;
}

- (NSDictionary *)dictionaryWithXML:(id)xml {
    OCMusicXMLDictionaryParser *parser = nil;
    if ([xml isKindOfClass:[NSString class]]) {
        parser = [[OCMusicXMLDictionaryParser alloc] initWithString:xml];
    } else if ([xml isKindOfClass:[NSData class]]) {
        parser = [[OCMusicXMLDictionaryParser alloc] initWithData:xml];
    }
    return [parser result];
}

@end
