#import <Foundation/Foundation.h>
#import "GImageValidationVm.h"
#import "GImageValidatorResult.h"

#import "GObject.h"
#import "GApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */


@interface GImagevalidationApi: NSObject

@property(nonatomic, assign)GApiClient *apiClient;

-(instancetype) initWithApiClient:(GApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(GImagevalidationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(GImagevalidationApi*) sharedAPI;

///
///
/// Submit image validation
/// Validates an images and returns a validation errors (if available).
///
/// @param req Image validation request, contains sku and image sizes per space
/// 
///
/// @return GImageValidatorResult*
-(NSNumber*) pOSTImagevalidationWithReq: (GImageValidationVm*) req
    completionHandler: (void (^)(GImageValidatorResult* output, NSError* error)) handler;





@end