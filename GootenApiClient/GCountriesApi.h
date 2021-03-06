#import <Foundation/Foundation.h>
#import "GCountryList.h"
#import "GObject.h"
#import "GApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface GCountriesApi: NSObject

@property(nonatomic, assign)GApiClient *apiClient;

-(instancetype) initWithApiClient:(GApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(GCountriesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(GCountriesApi*) sharedAPI;
///
///
/// Get a list of supported countries. Output is in specified language.
/// Get a list of supported countries. Output is in specified language.
///
/// @param languageCode Two-character language code, like \&quot;en\&quot; (english)
/// @param key A string used to query the language dictionary for specific values within a category.
/// 
///
/// @return GCountryList*
-(NSNumber*) countriesWithLanguageCode: (NSString*) languageCode
    key: (NSString*) key
    completionHandler: (void (^)(GCountryList* output, NSError* error)) handler;



@end
