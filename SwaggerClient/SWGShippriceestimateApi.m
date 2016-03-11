#import "SWGShippriceestimateApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGShipEstimate.h"


@interface SWGShippriceestimateApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGShippriceestimateApi

static SWGShippriceestimateApi* singletonAPI = nil;

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

+(SWGShippriceestimateApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGShippriceestimateApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGShippriceestimateApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGShippriceestimateApi alloc] init];
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
/// Get a baseline ship price for an item
/// Price returned is an estimate which may or may not be realistically attainable.
///  @param productId Product ID
///
///  @param countryCode Country Code it will be shipped to
///
///  @param currencyCode Currency Code the estimate should be in. Defaults to USD.
///
///  @returns SWGShipEstimate*
///
-(NSNumber*) getShippriceestimateWithProductId: (NSNumber*) productId
    countryCode: (NSString*) countryCode
    currencyCode: (NSString*) currencyCode
    completionHandler: (void (^)(SWGShipEstimate* output, NSError* error)) handler {

    
    // verify the required parameter 'productId' is set
    if (productId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `productId` when calling `getShippriceestimate`"];
    }
    
    // verify the required parameter 'countryCode' is set
    if (countryCode == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `countryCode` when calling `getShippriceestimate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shippriceestimate/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (productId != nil) {
        
        queryParams[@"productId"] = productId;
    }
    if (countryCode != nil) {
        
        queryParams[@"countryCode"] = countryCode;
    }
    if (currencyCode != nil) {
        
        queryParams[@"currencyCode"] = currencyCode;
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
                              responseType: @"SWGShipEstimate*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGShipEstimate*)data, error);
                           }
          ];
}



@end
