#import <Foundation/Foundation.h>
#import "GProductBuildInfoResponse.h"

#import "GObject.h"
#import "GApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */


@interface GProducttemplatesApi: NSObject

@property(nonatomic, assign)GApiClient *apiClient;

-(instancetype) initWithApiClient:(GApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(GProducttemplatesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(GProducttemplatesApi*) sharedAPI;

///
///
/// Get a list of product templates
/// Get a list of product templates.
///
/// @param sku Productvariant sku.
/// @param languageCode Two-character language code, defaults to \&quot;en\&quot; (english)
/// 
///
/// @return GProductBuildInfoResponse*
-(NSNumber*) getProducttemplatesWithSku: (NSString*) sku
    languageCode: (NSString*) languageCode
    completionHandler: (void (^)(GProductBuildInfoResponse* output, NSError* error)) handler;





@end