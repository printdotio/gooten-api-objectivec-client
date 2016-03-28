#import "GPriceestimateApi.h"
#import "GQueryParamCollection.h"
#import "GOrderPriceResult.h"
#import "GOrder.h"


@interface GPriceestimateApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GPriceestimateApi

static GPriceestimateApi* singletonAPI = nil;

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

+(GPriceestimateApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GPriceestimateApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GPriceestimateApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GPriceestimateApi alloc] init];
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
/// Get an order price
/// Get the price of an order, including discounts from a coupon.
///  @param order Order to potentially be submitted
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @returns GOrderPriceResult*
///
-(NSNumber*) pOSTPriceestimateWithOrder: (GOrder*) order
    version: (NSNumber*) version
    source: (NSString*) source
    completionHandler: (void (^)(GOrderPriceResult* output, NSError* error)) handler {

    
    // verify the required parameter 'order' is set
    if (order == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `order` when calling `pOSTPriceestimate`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `pOSTPriceestimate`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `pOSTPriceestimate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v/{version}/source/{source}/priceestimate/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
    
    bodyParam = order;
    

    
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
                              responseType: @"GOrderPriceResult*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GOrderPriceResult*)data, error);
                           }
          ];
}



@end
