//
//  ContentView.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 01/02/2023.
//

import SwiftUI


struct ContentView: View {
    //Variable bool qui permet d'ouvrir la seconde page
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
            ZStack {
                //Image du fond
                Image("BG")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width:390,height:844)
                    .aspectRatio(contentMode:.fit)
                
                //Texte + Bouton
                VStack {
                    Image("logoTakee")
                        .padding(.bottom,450)
                    Text("Happiness is closer than you think")
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .multilineTextAlignment(.center)
                        .frame(width:300)
                    
                    Button("Let's go !") {
                        showModal = true
                    }
                    .sheet(isPresented: $showModal) {
                        ListOfAnimalsView()
                    }.frame(width: 320, height: 60)
                        .font(.system(size:18, weight:.semibold))
                        .foregroundColor(.white)
                        .background(Color("LightPink"))
                        .cornerRadius(15)
                        .padding(.top,30)
                        
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
