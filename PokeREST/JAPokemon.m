//
//  JAPokemon.m
//  PokeREST
//
//  Created by José Antonio González on 30/04/16.
//  Copyright © 2016 Jose Antonio Gonzalez. All rights reserved.
//

#import "JAPokemon.h"

NSString * const BASE_URL = @"http://pokeapi.co/api/v2";
NSString * const kBerryResource = @"berry";
NSString * const kBerryFirmnessResource = @"berry-firmness";
NSString * const kBerryFlavorResource = @"berry-flavor";
NSString * const kPokemonResource = @"pokemon";

@implementation JAPokemon

#pragma mark - Berry

+ (void)fetchBerries:(void(^)(NSDictionary *berries, NSError *error))block
{
    [self fetch:kBerryResource
      WithBlock:^(id berries, NSError *error)
    {
        if (error) {
            block(nil, error);
        } else {
            block(berries, nil);
        }
    }];
}

+ (void)fetchBerryWithID:(NSString *)berryID
               WithBlock:(void(^)(NSDictionary *berry, NSError *error))block
{
    [self fetch:kBerryResource
   WithIdOrName:berryID
          Block:^(id berry, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berry, nil);
         }
     }];
}

+ (void)fetchBerryWithName:(NSString *)berryName
               WithBlock:(void(^)(NSDictionary *berry, NSError *error))block
{
    [self fetch:kBerryResource
   WithIdOrName:berryName
          Block:^(id berry, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berry, nil);
         }
     }];
}

+ (void)fetchBerriesFirmness:(void(^)(NSDictionary *berriesFirmness, NSError *error))block
{
    [self fetch:kBerryFirmnessResource
      WithBlock:^(id berriesFirmness, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berriesFirmness, nil);
         }
     }];
}

+ (void)fetchBerryFirmnessWithID:(NSString *)berryFirmnessID
                       WithBlock:(void(^)(NSDictionary *berryFirmness, NSError *error))block
{
    [self fetch:kBerryFirmnessResource
   WithIdOrName:berryFirmnessID
          Block:^(id berryFirmness, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berryFirmness, nil);
         }
     }];
}

+ (void)fetchBerryFirmnessWithName:(NSString *)berryFirmnessName
                         WithBlock:(void(^)(NSDictionary *berryFirmness, NSError *error))block
{
    [self fetch:kBerryFirmnessResource
   WithIdOrName:berryFirmnessName
          Block:^(id berryFirmness, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berryFirmness, nil);
         }
     }];
}

+ (void)fetchBerriesFlavor:(void(^)(NSDictionary *berriesFlavor, NSError *error))block
{
    [self fetch:kBerryFlavorResource
      WithBlock:^(id berriesFlavor, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berriesFlavor, nil);
         }
     }];
}

+ (void)fetchBerryFlavorWithID:(NSString *)berryFlavorID
                     WithBlock:(void(^)(NSDictionary *berryFlavor, NSError *error))block
{
    [self fetch:kBerryFlavorResource
   WithIdOrName:berryFlavorID
          Block:^(id berryFlavor, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berryFlavor, nil);
         }
     }];
}

+ (void)fetchBerryFlavorWithName:(NSString *)berryFlavorName
                       WithBlock:(void(^)(NSDictionary *berryFlavor, NSError *error))block
{
    [self fetch:kBerryFlavorResource
   WithIdOrName:berryFlavorName
          Block:^(id berryFlavor, NSError *error)
     {
         if (error) {
             block(nil, error);
         } else {
             block(berryFlavor, nil);
         }
     }];
}


#pragma mark - Pokemon

+ (void)fetchPokemons:(void(^)(NSDictionary *pokemons, NSError *error))block
{
    [self fetch:kPokemonResource
      WithBlock:^(id pokemons, NSError *error)
    {
        if (error) {
            block(nil, error);
        } else {
            block(pokemons, nil);
        }
    }];
}

+ (void)fetchPokemonWithID:(NSString *)pokemonID
                 WithBlock:(void(^)(NSDictionary *pokemon, NSError *error))block
{
    [self fetch:kPokemonResource
   WithIdOrName:pokemonID
          Block:^(id pokemon, NSError *error)
    {
        if (error) {
            block(nil, error);
        } else {
            block(pokemon, nil);
        }
    }];
}

+ (void)fetchPokemonWithName:(NSString *)pokemonName
                   WithBlock:(void(^)(NSDictionary *pokemon, NSError *error))block
{
    [self fetch:kPokemonResource
   WithIdOrName:pokemonName
          Block:^(id pokemon, NSError *error)
    {
        if (error) {
            block(nil, error);
        } else {
            block(pokemon, nil);
        }
    }];
}

#pragma mark - Generic

+ (void)fetch:(NSString *)resourceName
    WithBlock:(void(^)(id resources, NSError *error))block
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@", BASE_URL, resourceName]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request
                                                completionHandler:^(NSURLResponse * _Nonnull response,
                                                                    id  _Nullable responseObject,
                                                                    NSError * _Nullable error)
    {
        if (error) {
            block(nil, error);
        } else {
            block(responseObject, nil);
        }
    }];
    
    [dataTask resume];
}

+ (void)fetch:(NSString *)resourceName
 WithIdOrName:(NSString *)idOrName
        Block:(void(^)(id resource, NSError *error))block
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@/%@", BASE_URL, resourceName, idOrName]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request
                                                completionHandler:^(NSURLResponse * _Nonnull response,
                                                                    id  _Nullable responseObject,
                                                                    NSError * _Nullable error)
    {
        if (error) {
            block(nil, error);
        } else {
            block(responseObject, nil);
        }
    }];
    
    [dataTask resume];
}

@end
