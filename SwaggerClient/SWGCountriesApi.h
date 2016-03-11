#import <Foundation/Foundation.h>
#import "SWGCountryList.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGCountriesApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGCountriesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGCountriesApi*) sharedAPI;
///
///
/// Get a list of supported countries. Output is in specified language.
/// Get a list of supported countries. Output is in specified language.
///
/// @param languageCode Two-character language code, like \&quot;en\&quot; (english)
/// @param key A string used to query the language dictionary for specific values within a category.
/// 
///
/// @return SWGCountryList*
-(NSNumber*) countriesWithLanguageCode: (NSString*) languageCode
    key: (NSString*) key
    completionHandler: (void (^)(SWGCountryList* output, NSError* error)) handler;



@end