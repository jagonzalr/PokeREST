//
//  JAPokemon.h
//  PokeREST
//
//  Created by José Antonio González on 30/04/16.
//  Copyright © 2016 Jose Antonio Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

extern NSString * const BASE_URL;
extern NSString * const kBerryResource;
extern NSString * const kBerryFirmnessResource;
extern NSString * const kBerryFlavorResource;
extern NSString * const kContestTypeResource;
extern NSString * const kContestEffectResource;
extern NSString * const kSuperContestEffectResource;
extern NSString * const kPokemonResource;

@interface JAPoke : NSObject

#pragma mark - Properties


#pragma mark - Berries

+ (void)fetchBerries:(void(^)(NSDictionary *berries, NSError *error))block;
+ (void)fetchBerryWithID:(NSString *)berryID
               WithBlock:(void(^)(NSDictionary *berry, NSError *error))block;
+ (void)fetchBerryWithName:(NSString *)berryName
                 WithBlock:(void(^)(NSDictionary *berry, NSError *error))block;


#pragma mark - Berries Firmness

+ (void)fetchBerriesFirmness:(void(^)(NSDictionary *berriesFirmness, NSError *error))block;
+ (void)fetchBerryFirmnessWithID:(NSString *)berryFirmnessID
                       WithBlock:(void(^)(NSDictionary *berryFirmness, NSError *error))block;
+ (void)fetchBerryFirmnessWithName:(NSString *)berryFirmnessName
                         WithBlock:(void(^)(NSDictionary *berryFirmness, NSError *error))block;


#pragma mark - Berries Flavor

+ (void)fetchBerriesFlavor:(void(^)(NSDictionary *berriesFlavor, NSError *error))block;
+ (void)fetchBerryFlavorWithID:(NSString *)berryFlavorID
                     WithBlock:(void(^)(NSDictionary *berryFlavor, NSError *error))block;
+ (void)fetchBerryFlavorWithName:(NSString *)berryFlavorName
                       WithBlock:(void(^)(NSDictionary *berryFlavor, NSError *error))block;


#pragma mark - Contest Types

+ (void)fetchContestTypes:(void(^)(NSDictionary *contestTypes, NSError *error))block;
+ (void)fetchContestTypeWithID:(NSString *)contestTypeID
                     WithBlock:(void(^)(NSDictionary *contestType, NSError *error))block;
+ (void)fetchContestTypeWithName:(NSString *)contestTypeName
                       WithBlock:(void(^)(NSDictionary *contestType, NSError *error))block;


#pragma mark - Contest Effects

+ (void)fetchContestEffects:(void(^)(NSDictionary *contestEffects, NSError *error))block;
+ (void)fetchContestEffectWithID:(NSString *)contestEffectID
                       WithBlock:(void(^)(NSDictionary *contestEffect, NSError *error))block;


#pragma mark - Super Contest Effects

+ (void)fetchSuperContestEffects:(void(^)(NSDictionary *superContestEffects, NSError *error))block;
+ (void)fetchSuperContestEffectWithID:(NSString *)supperContestEffectID
                            WithBlock:(void(^)(NSDictionary *supperContestEffect, NSError *error))block;

#pragma mark - Encounter Methods

#pragma mark - Encounter Conditions

#pragma mark - Encounter Conditions Values

#pragma mark - Evolution Chains

#pragma mark - Evolution Triggers

#pragma mark - Generations

#pragma mark - Pokedexes

#pragma mark - Versions

#pragma mark - Version Groups


# pragma mark - Pokemon

+ (void)fetchPokemons:(void(^)(NSDictionary *pokemons, NSError *error))block;
+ (void)fetchPokemonWithID:(NSString *)pokemonID
                 WithBlock:(void(^)(NSDictionary *pokemon, NSError *error))block;
+ (void)fetchPokemonWithName:(NSString *)pokemonName
                   WithBlock:(void(^)(NSDictionary *pokemon, NSError *error))block;


# pragma mark - Generic

+ (void)fetch:(NSString *)resourceName
    WithBlock:(void(^)(id resources, NSError *error))block;

+ (void)fetch:(NSString *)resourceName
 WithIdOrName:(NSString *)idOrName
        Block:(void(^)(id resource, NSError *error))block;

@end
