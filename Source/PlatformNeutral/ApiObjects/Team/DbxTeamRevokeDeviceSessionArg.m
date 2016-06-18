///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDeviceSessionArg.h"
#import "DbxTeamRevokeDesktopClientArg.h"
#import "DbxTeamRevokeDeviceSessionArg.h"

@implementation DbxTeamRevokeDeviceSessionArg 

- (instancetype)initWithWebSession:(DbxTeamDeviceSessionArg *)webSession {
    self = [super init];
    if (self != nil) {
        _tag = (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgWebSession;
        _webSession = webSession;
    }
    return self;
}

- (instancetype)initWithDesktopClient:(DbxTeamRevokeDesktopClientArg *)desktopClient {
    self = [super init];
    if (self != nil) {
        _tag = (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgDesktopClient;
        _desktopClient = desktopClient;
    }
    return self;
}

- (instancetype)initWithMobileClient:(DbxTeamDeviceSessionArg *)mobileClient {
    self = [super init];
    if (self != nil) {
        _tag = (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgMobileClient;
        _mobileClient = mobileClient;
    }
    return self;
}

- (BOOL)isWebSession {
    return _tag == (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgWebSession;
}

- (BOOL)isDesktopClient {
    return _tag == (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgDesktopClient;
}

- (BOOL)isMobileClient {
    return _tag == (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgMobileClient;
}

- (NSString *)getTagName {
    if (_tag == (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgWebSession) {
        return @"(TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgWebSession";
    }
    if (_tag == (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgDesktopClient) {
        return @"(TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgDesktopClient";
    }
    if (_tag == (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgMobileClient) {
        return @"(TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgMobileClient";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxTeamDeviceSessionArg *)webSession {
    if (_tag != (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgWebSession) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgWebSession, but was %@.", [self getTagName]];
    }
    return _webSession;
}

- (DbxTeamRevokeDesktopClientArg *)desktopClient {
    if (_tag != (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgDesktopClient) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgDesktopClient, but was %@.", [self getTagName]];
    }
    return _desktopClient;
}

- (DbxTeamDeviceSessionArg *)mobileClient {
    if (_tag != (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgMobileClient) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (TeamRevokeDeviceSessionArgTag)TeamRevokeDeviceSessionArgMobileClient, but was %@.", [self getTagName]];
    }
    return _mobileClient;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamRevokeDeviceSessionArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamRevokeDeviceSessionArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamRevokeDeviceSessionArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamRevokeDeviceSessionArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamRevokeDeviceSessionArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isWebSession]) {
        jsonDict[@"web_session"] = [DbxTeamDeviceSessionArgSerializer serialize:valueObj.webSession];
        jsonDict[@".tag"] = @"web_session";
    }
    else if ([valueObj isDesktopClient]) {
        jsonDict[@"desktop_client"] = [DbxTeamRevokeDesktopClientArgSerializer serialize:valueObj.desktopClient];
        jsonDict[@".tag"] = @"desktop_client";
    }
    else if ([valueObj isMobileClient]) {
        jsonDict[@"mobile_client"] = [DbxTeamDeviceSessionArgSerializer serialize:valueObj.mobileClient];
        jsonDict[@".tag"] = @"mobile_client";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamRevokeDeviceSessionArg *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"web_session"]) {
        DbxTeamDeviceSessionArg *webSession = [DbxTeamDeviceSessionArgSerializer deserialize:valueDict[@"web_session"]];
        return [[DbxTeamRevokeDeviceSessionArg alloc] initWithWebSession:webSession];
    }
    if ([tag isEqualToString:@"desktop_client"]) {
        DbxTeamRevokeDesktopClientArg *desktopClient = [DbxTeamRevokeDesktopClientArgSerializer deserialize:valueDict[@"desktop_client"]];
        return [[DbxTeamRevokeDeviceSessionArg alloc] initWithDesktopClient:desktopClient];
    }
    if ([tag isEqualToString:@"mobile_client"]) {
        DbxTeamDeviceSessionArg *mobileClient = [DbxTeamDeviceSessionArgSerializer deserialize:valueDict[@"mobile_client"]];
        return [[DbxTeamRevokeDeviceSessionArg alloc] initWithMobileClient:mobileClient];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end