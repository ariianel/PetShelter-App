//
//  AnimalDetailView.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 05/05/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animals
    
    var body: some View {
        ZStack{
            VStack() {
                Image(animal.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(animal.prenom)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                HStack(spacing:10){
                    //Age//
                    HStack{
                        Text(animal.date)
                            .frame(width: 65, height: 29)
                            .font(.system(size: 13))
                            .foregroundColor(Color("LightBrown"))
                    }
                    .background(Color("yellowLight"))
                    .cornerRadius(30)
                    //Race//
                    HStack{
                        Text(animal.race)
                            .frame(width: 166, height:29)
                            .font(.system(size: 13))
                            .foregroundColor(Color("LightBrown"))
                    }
                    .background(Color("purpleLight"))
                    .cornerRadius(30)
                    //Poids//
                    
                    HStack{
                        Text(animal.weight)
                            .frame(width: 64, height:29)
                            .font(.system(size: 13))
                            .foregroundColor(Color("LightBrown"))
                    }
                    .background(Color("pinkLight"))
                    .cornerRadius(30)
                    
                }
                Text(animal.description)
                    .frame(width: 341, height:88)
                    .foregroundColor(Color("blackLight"))
                    .font(.system(size: 13))
              
                Spacer()
                
                
                Text("Sign up for acquaintance")
                    .frame(width: 320, height: 60)
                    .font(.system(size:18, weight:.semibold))
                    .foregroundColor(.white)
                    .background(Color("LightPink"))
                    .cornerRadius(100)
                    .padding(.top,30)
                
            }
        }
       
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals = AnimalsList.infoAnimals
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
                .environmentObject(CartManager())
        }
    }
}
