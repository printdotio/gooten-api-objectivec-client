#import "GAddressvalidationApi.h"
#import "GQueryParamCollection.h"
#import "GResult.h"


@interface GAddressvalidationApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GAddressvalidationApi

static GAddressvalidationApi* singletonAPI = nil;

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

+(GAddressvalidationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GAddressvalidationApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GAddressvalidationApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GAddressvalidationApi alloc] init];
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
/// Validates an address and returns a suggested address (if available) and a validation score.
/// Validates an address and returns a suggested address (if available) and a validation score.
///  @param line1 Address line1.
///
///  @param line2 Address line2.
///
///  @param city Address city.
///
///  @param state Address state.
///
///  @param postalCode Address postal code/zip.
///
///  @param countryCode Address country code.
///
///  @returns GResult*
///
-(NSNumber*) addressvalidationWithLine1: (NSString*) line1
    line2: (NSString*) line2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    countryCode: (NSString*) countryCode
    completionHandler: (void (^)(GResult* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressvalidation/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (line1 != nil) {
        
        queryParams[@"line1"] = line1;
    }
    if (line2 != nil) {
        
        queryParams[@"line2"] = line2;
    }
    if (city != nil) {
        
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        
        queryParams[@"postalCode"] = postalCode;
    }
    if (countryCode != nil) {
        
        queryParams[@"countryCode"] = countryCode;
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
                              responseType: @"GResult*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GResult*)data, error);
                           }
          ];
}



@end
