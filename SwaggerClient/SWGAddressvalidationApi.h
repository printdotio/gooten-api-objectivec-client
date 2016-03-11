#import <Foundation/Foundation.h>
#import "SWGResult.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGAddressvalidationApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGAddressvalidationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGAddressvalidationApi*) sharedAPI;
///
///
/// Validates an address and returns a suggested address (if available) and a validation score.
/// Validates an address and returns a suggested address (if available) and a validation score.
///
/// @param line1 Address line1.
/// @param line2 Address line2.
/// @param city Address city.
/// @param state Address state.
/// @param postalCode Address postal code/zip.
/// @param countryCode Address country code.
/// 
///
/// @return SWGResult*
-(NSNumber*) addressvalidationWithLine1: (NSString*) line1
    line2: (NSString*) line2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    countryCode: (NSString*) countryCode
    completionHandler: (void (^)(SWGResult* output, NSError* error)) handler;



@end
