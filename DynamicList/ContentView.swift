//
//  ContentView.swift
//  DynamicList
//
//  Created by Ilyasa Azmi on 25/10/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import SwiftUI

struct Pokemon : Identifiable {
    let id: Int
    
    let name: String
    let type: String
    let color: Color
}


struct ContentView: View {
    @State var pokemonList = [
        Pokemon(id: 0, name: "Charmander", type: "Fire", color: .red),
        Pokemon(id: 1, name: "Squirtle", type: "Water", color: .blue),
        Pokemon(id: 2, name: "Barbu", type: "Grass", color: .green),
        Pokemon(id: 3, name: "Pika", type: "Electric", color: .yellow),
    ]
    @State var showDetails = true
    
    var body: some View {
        NavigationView {
            List(pokemonList) {pokemon in
                HStack {
                    Text(pokemon.name)
                    if self.showDetails {
                        Text(pokemon.type).foregroundColor(pokemon.color)
                    }
                }
            }
            .navigationBarTitle(Text("Pokemon"))
            .navigationBarItems(
                leading: ToggleTextButton(isOn: $showDetails),
                trailing: Button(
                    action: addPokemon, label: {Text("Add")}
                )
            )
        }
    }
    
    func addPokemon(){
        if let randomPokemon = pokemonList.randomElement() {
            pokemonList.append(randomPokemon)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
