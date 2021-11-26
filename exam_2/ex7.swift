//
//  ex7.swift
//  exam_2
//
//  Created by Minh Anh on 11/26/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

/*
 Exam 7:
 Build a Pokédex
 In this project, you will be using Swift classes to help Professor Oak categorize all the different Pokémons into an electronic device — a Pokédex.
 */
enum pokemonTypes {
    case Bug,
    Dark,
    Dragon,
    Electric,
    Fairy,
    Fighting,
    Fire,
    Flying,
    Ghost,
    Grass,
    Ground,
    Ice,
    Normal,
    Poison,
    Psychic,
    Rock,
    Steel,
    Water
}
class pokemonObject {
    var id: Int
    var name: String
    var captured: Bool
    var imgUrl: String
    var pokemonTypes: [String]
    
    init(id: Int, name: String, captured: Bool, imgUrl: String, pokemonTypes: [String]) {
        self.id = id
        self.name = name
        self.captured = captured
        self.imgUrl = imgUrl
        self.pokemonTypes = pokemonTypes
    }
    func info() -> String {
        print("Pokemon infomation:\n  id: \(self.id), name: \(self.name), captured: \(self.captured), iamge url: \(self.imgUrl), category: \(self.pokemonTypes)")
        return ""
    }
}

func pokemonMain () {
    var pokemons: [pokemonObject] = []
    pokemons += [
        pokemonObject(id: 1, name: "Bulbasaur", captured: false, imgUrl: "http://img.pokemondb.net/artwork/bulbasaur.jpg", pokemonTypes: ["Grass", "Poison"]),
        pokemonObject(id: 2, name: "Ivysaur", captured: false, imgUrl: "http://img.pokemondb.net/artwork/ivysaur.jpg", pokemonTypes: ["Grass", "Poison"]),
        pokemonObject(id: 3, name: "Venusaur", captured: false, imgUrl: "http://img.pokemondb.net/artwork/venusaur.jpg", pokemonTypes: ["Grass", "Poison"]),
        pokemonObject(id: 4, name: "Charmander", captured: false, imgUrl: "http://img.pokemondb.net/artwork/charmander.jpg", pokemonTypes: ["Fire"]),
        pokemonObject(id: 5, name: "Charmeleon", captured: false, imgUrl: "http://img.pokemondb.net/artwork/charmeleon.jpg", pokemonTypes: ["Fire"]),
        pokemonObject(id: 6, name: "Charizard", captured: false, imgUrl: "http://img.pokemondb.net/artwork/charizard.jpg", pokemonTypes: ["Fire", "Flying"]),
        pokemonObject(id: 7, name: "Squirtle", captured: false, imgUrl: "http://img.pokemondb.net/artwork/squirtle.jpg", pokemonTypes: ["Water"]),
        pokemonObject(id: 8, name: "Wartortle", captured: false, imgUrl: "http://img.pokemondb.net/artwork/wartortle.jpg", pokemonTypes: ["Water"]),
        pokemonObject(id: 9, name: "Blastoise", captured: false, imgUrl: "http://img.pokemondb.net/artwork/blastoise.jpg", pokemonTypes: ["Water"]),
        pokemonObject(id: 10, name: "Caterpie", captured: false, imgUrl: "http://img.pokemondb.net/artwork/caterpie.jpg", pokemonTypes: ["Bug"])
    ]
    
    let displayPokemonList = {(pokemons: [pokemonObject]) -> String in
        if pokemons.count > 1 {
            var check = 0
            for (pokemon) in pokemons {
                check += 1
                print("Pokemon infomation number \(check):\n  id: \(pokemon.id), name: \(pokemon.name), captured: \(pokemon.captured), iamge url: \(pokemon.imgUrl), category: \(pokemon.pokemonTypes)")
            }
        }
        return ""
    }
    let pokemonInfoById = {(value: Int, pokemons: [pokemonObject]) -> String in
        if let result = pokemons.enumerated().first(where: {$0.element.id == value}) {
            result.element.info()
        } else {
            print("We don't have this Pokemon by id: \(value)")
        }
        print(pokemons.count)
        return ""
    }
    let pokemonInfoByName = {(value: String, pokemons: [pokemonObject]) -> String in
        if let result = pokemons.enumerated().first(where: {$0.element.name == value}) {
            result.element.info()
        } else {
            print("We don't have this Pokemon by name: \(value)")
        }
        return ""
    }
    let pokemonListByCategory = {(value: String, pokemons: [pokemonObject]) -> String in
        var filterResult: [pokemonObject] = []
        print("Pokemon info belong to \(value) category:")
        for pokemon in pokemons {
            if pokemon.pokemonTypes.contains(value) {
                pokemon.info()
            }
        }
        return ""
    }
    let pokemonListBySearch = {(value: String, pokemons: [pokemonObject]) -> String in
        var filterResult: [pokemonObject] = []
        print("Pokemon info belong to \(value) category:")
        for pokemon in pokemons {
            let checkContainSubstring = {(poTypes: [String], subType: String) -> Bool in
                for type in poTypes {
                    if type.contains(subType) {
                        return true
                    }
                }
                return false
            }
            if checkContainSubstring(pokemon.pokemonTypes, value) || pokemon.name.contains(value) {
                pokemon.info()
            }
        }
        return ""
    }
    var feature = 0
    let elements = [1, 2, 3, 4, 5]
    repeat {
        print("1: Display list pokemon")
        print("2: Get pokemon info by word.")
        print("3: Get pokemon info by name.")
        print("4: Get list pokemon by category")
        print("5: Out:")
        print("please choose your feature: ")
        feature = Int(readLine()!) ?? 0
    } while (!elements.contains(feature))
    
    if elements.contains(feature) {
        switch feature {
        case 1:
            displayPokemonList(pokemons)
        case 2:
            print("Press Pokemon word that you impress: ")
            let key = String(readLine()!)
            pokemonListBySearch(key, pokemons)
        case 3:
            print("Press Pokemon Name that you impress: ")
            let poName = String(readLine()!)
            pokemonInfoByName(poName, pokemons)
        case 4:
            print("Press Pokemon Category Nam that you impress: ")
            let poCategoryName = String(readLine()!)
            pokemonListByCategory(poCategoryName, pokemons)
        case 5:
            byeFunction()
            break
        default:
            break
        }
    }
}
