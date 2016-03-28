#import "GShippingpricesApi.h"
#import "GQueryParamCollection.h"
#import "GShippingPricesResult.h"
#import "GShippingPricesRequest.h"


@interface GShippingpricesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GShippingpricesApi

static GShippingpricesApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        GConfiguration *config = [GConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[GApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(GApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(GShippingpricesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GShippingpricesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GShippingpricesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GShippingpricesApi alloc] init];
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
    return [GApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Get a list of shipping options and prices for items
/// Get a list of shipping options and prices for items.
///  @param shippingPricesRequest DTO with required information
///
///  @param partnerBillingKey Partner billing key
///
///  @returns GShippingPricesResult*
///
-(NSNumber*) pOSTShippingpricesWithShippingPricesRequest: (GShippingPricesRequest*) shippingPricesRequest
    partnerBillingKey: (NSString*) partnerBillingKey
    completionHandler: (void (^)(GShippingPricesResult* output, NSError* error)) handler {

    
    // verify the required parameter 'shippingPricesRequest' is set
    if (shippingPricesRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `shippingPricesRequest` when calling `pOSTShippingprices`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shippingprices/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (partnerBillingKey != nil) {
        
        queryParams[@"partnerBillingKey"] = partnerBillingKey;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [GApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [GApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = shippingPricesRequest;
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"GShippingPricesResult*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GShippingPricesResult*)data, error);
                           }
          ];
}



@end
