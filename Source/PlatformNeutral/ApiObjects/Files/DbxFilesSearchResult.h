///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesSearchMatch;
@class DbxFilesSearchResult;

/// 
/// The DbxFilesSearchResult struct.
/// 
@interface DbxFilesSearchResult : NSObject <DbxSerializable> 

/// A list (possibly empty) of matches for the query.
@property (nonatomic) NSArray<DbxFilesSearchMatch *> * _Nonnull matches;
/// Used for paging. If true, indicates there is another page of results
/// available that can be fetched by calling search again.
@property (nonatomic, copy) NSNumber * _Nonnull more;
/// Used for paging. Value to set the start argument to when calling search to
/// fetch the next page of results.
@property (nonatomic, copy) NSNumber * _Nonnull start;

- (nonnull instancetype)initWithMatches:(NSArray<DbxFilesSearchMatch *> * _Nonnull)matches more:(NSNumber * _Nonnull)more start:(NSNumber * _Nonnull)start;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesSearchResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesSearchResult * _Nonnull)obj;

+ (DbxFilesSearchResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end