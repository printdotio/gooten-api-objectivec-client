#import "SWGPaymentvalidationApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGPaymentValidationResponse.h"


@interface SWGPaymentvalidationApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGPaymentvalidationApi

static SWGPaymentvalidationApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGPaymentvalidationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPaymentvalidationApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGPaymentvalidationApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPaymentvalidationApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Submit payment validation for PayPal
/// Submit payment validation for PayPal
///  @param orderId Order Id returned from orders/POST
///
///  @param payPalKey The PayPal key returned from the Mobile SDK
///
///  @returns SWGPaymentValidationResponse*
///
-(NSNumber*) paymentvalidationWithOrderId: (NSString*) orderId
    payPalKey: (NSString*) payPalKey
    completionHandler: (void (^)(SWGPaymentValidationResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `orderId` when calling `paymentvalidation`"];
    }
    
    // verify the required parameter 'payPalKey' is set
    if (payPalKey == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `payPalKey` when calling `paymentvalidation`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/paymentvalidation/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (orderId != nil) {
        
        queryParams[@"OrderId"] = orderId;
    }
    if (payPalKey != nil) {
        
        queryParams[@"PayPalKey"] = payPalKey;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPaymentValidationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGPaymentValidationResponse*)data, error);
                           }
          ];
}



@end
