#import <Foundation/Foundation.h>
#import "SWGPreconfiguredProductInsert.h"
#import "SWGPreconfiguredProductsInsertResponse.h"
#import "SWGPreconfiguredProductsResponse.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGPreconfiguredproductsApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGPreconfiguredproductsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGPreconfiguredproductsApi*) sharedAPI;
///
///
/// Insert a preconfigured product
/// Insert a preconfigured product into your recipe.
///
/// @param preconfiguredProductInsert The product to be inserted
/// @param version Version of the api being used
/// @param source Description of the source-- ios, android, api
/// 
///
/// @return SWGPreconfiguredProductsInsertResponse*
-(NSNumber*) createPreconfiguredproductsWithPreconfiguredProductInsert: (SWGPreconfiguredProductInsert*) preconfiguredProductInsert
    version: (NSNumber*) version
    source: (NSString*) source
    completionHandler: (void (^)(SWGPreconfiguredProductsInsertResponse* output, NSError* error)) handler;


///
///
/// Delete a preconfigured product
/// Delete a preconfigured product from your recipe.
///
/// @param version Version of the api being used
/// @param source Description of the source-- ios, android, api
/// @param sku The preconfigured product&#39;s sku.
/// 
///
/// @return SWGPreconfiguredProductsInsertResponse*
-(NSNumber*) deletePreconfiguredproductsWithVersion: (NSNumber*) version
    source: (NSString*) source
    sku: (NSString*) sku
    completionHandler: (void (^)(SWGPreconfiguredProductsInsertResponse* output, NSError* error)) handler;


///
///
/// Get a list of your preconfigured products
/// Get a list of your preconfigured products. The products returned are entirely specific to your recipe.
///
/// @param countryCode The country code where it would be shipped to. For example, &#39;US&#39; or &#39;CA&#39;
/// @param version Version of the api being used
/// @param source Description of the source-- ios, android, api
/// @param languageCode Two-character language code, defaults to \&quot;en\&quot; (english)
/// @param currencyCode Three character currency code, defaults to \&quot;USD\&quot; (united states dollar)
/// 
///
/// @return SWGPreconfiguredProductsResponse*
-(NSNumber*) getPreconfiguredproductsWithCountryCode: (NSString*) countryCode
    version: (NSNumber*) version
    source: (NSString*) source
    languageCode: (NSString*) languageCode
    currencyCode: (NSString*) currencyCode
    completionHandler: (void (^)(SWGPreconfiguredProductsResponse* output, NSError* error)) handler;


///
///
/// Update a preconfigured product
/// Update a preconfigured product into your recipe.
///
/// @param preconfiguredProductInsert The product to be inserted
/// @param version Version of the api being used
/// @param source Description of the source-- ios, android, api
/// 
///
/// @return SWGPreconfiguredProductsInsertResponse*
-(NSNumber*) updatePreconfiguredproductsWithPreconfiguredProductInsert: (SWGPreconfiguredProductInsert*) preconfiguredProductInsert
    version: (NSNumber*) version
    source: (NSString*) source
    completionHandler: (void (^)(SWGPreconfiguredProductsInsertResponse* output, NSError* error)) handler;



@end