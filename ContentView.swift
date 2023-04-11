//
//  ContentView.swift
//  LaurellaApp
//
//  Created by stud on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var sukienki = ["Sukienka-Bettie-White-Dots": 179.00, "Sukienka-Juline-Sea-Storm": 179.00, "Sukienka-Wendy-Light-Grey": 179.00, "Sukienka-Lisa-Little-Black-Stars": 179.00, "Sukienka-Margot-Yellow-Spots": 179.00, "Sukienka-Milano-White-Dots": 179.00]
    
    var bluzki = ["Bluzka-Isla-Black": 179.00, "Bluzka-Nancie-Flowers": 179.00, "Bluzka-Naomi-Little-Flowers": 179.00, "Bluzka-Suzie-Blue": 179.00]
    
    var bluzy = ["Bluza-Amanda-Deep-Green": 179.00, "Bluza-Lomi-Pink": 179.00]
    
    var swetry = ["Golf-Vicky-Beige": 179.00, "sweter_evana_pink": 179.00, "Sweter-Dovie-Dusty-Blue": 179.00, "Sweter-Sophie-Two-Colors": 179.00, "swter_tammy_light_green": 179.00]
    
    var spodniczki = ["Spodnica-Bell-Fuchsia": 179.00, "Spodniczka-Miley-Purple-Flowers": 179.00, "Spodniczka-Tiera-Flowers": 179.00]
    
    var spodnie = ["Spodnie-Hayle-Granite-Gray": 179.00, "Spodnie-Wide-Flowers": 179.00]
    
    var bizuteria = ["Bransoletka-Noelle": 179.00, "Kolczyki-SOLEDAD-srebrne": 179.00]
    
    var czapki = ["Czapka-zimowa-Green": 179.00, "Czapka-zimowa-Grey": 179.00]
    
    
    @State private var showApp: Bool = false
    @State private var showCart: Bool = false
    @State private var chosenCategory: String = ""
    @State private var cart = ["Spodnie-Hayle-Granite-Gray": 179.00]
    
    var body: some View {
        if !showApp {
            VStack {
                Image("logo")
                    .scaledToFit()
                    .foregroundColor(.accentColor)
                    .onTapGesture{self.showApp = true}
                Text("")
                
                
            }
            .padding()
        }
        else if !showCart{
            VStack {
                HStack{
                
                    Menu("MENU") {
                        Button("Sukienki", action: {chosenCategory = "sukienki"})
                        Menu("Gora") {
                            Button("Bluzki", action: {chosenCategory = "bluzki"})
                            Button("Swetry", action: {chosenCategory = "swetry"})
                            Button("Bluzy", action: {chosenCategory = "bluzy"})
                        }
                        Menu("Dol") {
                            Button("Spodniczki", action: {chosenCategory = "spodniczki"})
                            Button("Spodnie", action: {chosenCategory = "spodnie"})
                        }
                        Menu("Akcesoria") {
                            Button("Bizuteria", action: {chosenCategory = "bizuteria"})
                            Button("Czapki", action: {chosenCategory = "czapki"})
                        }
                        Button("Koszyk", action: {self.showCart = true})

                    }
                    
                    Image("logo")
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .onTapGesture{self.showApp = true}
                }
                
                
                if(chosenCategory == "sukienki"){
                    List {
                        ForEach(sukienki.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                    
                }
                else if(chosenCategory == "bluzki"){
                    List {
                        ForEach(bluzki.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                }
                else if(chosenCategory == "bluzy"){
                    List {
                        ForEach(bluzy.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                }
                else if(chosenCategory == "swetry"){
                    List {
                        ForEach(swetry.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                    
                }
                else if(chosenCategory == "spodniczki"){
                    List {
                        ForEach(spodniczki.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                }
                else if(chosenCategory == "spodnie"){
                    List {
                        ForEach(spodnie.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                }
                else if(chosenCategory == "bizuteria"){
                    List {
                        ForEach(bizuteria.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                }
                else if(chosenCategory == "czapki"){
                    List {
                        ForEach(czapki.sorted(by: >), id: \.key) { key, value in
                            VStack {
                                
                                Image(key)
                                    .resizable()
                                    .scaledToFit()
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Dodaj do koszyka", action: {self.cart[key] = value})
                                Text("")
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                    
                }
                
                Spacer()
            }
            
        }
        else{
            VStack{
                HStack{
                
                    Menu("MENU") {
                        Button("Sukienki", action: {chosenCategory = "sukienki"; self.showCart = false})
                        Menu("Gora") {
                            Button("Bluzki", action: {chosenCategory = "bluzki"; self.showCart = false})
                            Button("Swetry", action: {chosenCategory = "swetry"; self.showCart = false})
                            Button("Bluzy", action: {chosenCategory = "bluzy"; self.showCart = false})
                        }
                        Menu("Dol") {
                            Button("Spodniczki", action: {chosenCategory = "spodniczki"; self.showCart = false})
                            Button("Spodnie", action: {chosenCategory = "spodnie"; self.showCart = false})
                        }
                        Menu("Akcesoria") {
                            Button("Bizuteria", action: {chosenCategory = "bizuteria"; self.showCart = false})
                            Button("Czapki", action: {chosenCategory = "czapki"; self.showCart = false})
                        }
                        
                    }
                    
                    Image("logo")
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .onTapGesture{self.showApp = true}
                    
                    
                    
                }
                
                Text("Twój koszyk")
                List{
                    ForEach(self.cart.sorted(by: >), id: \.key) { key, value in
                        HStack {
                            
                            Image(key)
                                .resizable()
                                .scaledToFill()
                            VStack{
                                Text(key)
                                Text(value)
                                Text("")
                                Button("Usuń", action: {self.cart.removeValue(forKey: key)})
                            }
                            
                        }
                        
                    }
                }
                Spacer()
            }
        }
         
    }
    
}


    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
