//
//  JAPokemon.h
//  PokeREST
//
//  Created by José Antonio González on 30/04/16.
//  Copyright © 2016 Jose Antonio Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface JAPokemon : NSObject

@property (nonatomic) NSInteger ID;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger height;
@property (nonatomic) NSInteger weight;

#pragma mark - Berry

+ (void)fetchBerries:(void(^)(NSDictionary *berries, NSError *error))block;
+ (void)fetchBerryWithID:(NSString *)berryID
               WithBlock:(void(^)(NSDictionary *berry, NSError *error))block;
+ (void)fetchBerryWithName:(NSString *)berryName
                 WithBlock:(void(^)(NSDictionary *berry, NSError *error))block;

+ (void)fetchBerriesFirmness:(void(^)(NSDictionary *berriesFirmness, NSError *error))block;
+ (void)fetchBerryFirmnessWithID:(NSString *)berryFirmnessID
                       WithBlock:(void(^)(NSDictionary *berryFirmness, NSError *error))block;
+ (void)fetchBerryFirmnessWithName:(NSString *)berryFirmnessName
                         WithBlock:(void(^)(NSDictionary *berryFirmness, NSError *error))block;

+ (void)fetchBerriesFlavor:(void(^)(NSDictionary *berriesFlavor, NSError *error))block;
+ (void)fetchBerryFlavorWithID:(NSString *)berryFlavorID
                     WithBlock:(void(^)(NSDictionary *berryFlavor, NSError *error))block;
+ (void)fetchBerryFlavorWithName:(NSString *)berryFlavorName
                       WithBlock:(void(^)(NSDictionary *berryFlavor, NSError *error))block;


# pragma mark - Pokemon

+ (void)fetchPokemons:(void(^)(NSDictionary *pokemons, NSError *error))block;
+ (void)fetchPokemonWithID:(NSString *)pokemonID
                 WithBlock:(void(^)(NSDictionary *pokemon, NSError *error))block;
+ (void)fetchPokemonWithName:(NSString *)pokemonName
                   WithBlock:(void(^)(NSDictionary *pokemon, NSError *error))block;

@end
