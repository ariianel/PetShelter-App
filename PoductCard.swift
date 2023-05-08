//
//  PoductCard.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 03/02/2023.
//

import SwiftUI

struct PoductCard : View {
    @EnvironmentObject var cartManager: CartManager
    var animals: Animals
    @State private var isFill = false
    
    var body: some View {
        ZStack(alignment:.topTrailing) {
            //Cadre avec image + Description du chien
            ZStack(alignment:.bottom) {
                ImageDescriptionView(image: animals.image, name: animals.prenom, date: animals.date, race: animals.race)
            }
            .frame(width:180, alignment: .leading)
            .shadow(radius: 3)
            
            //L'étoile de favoris
            Button {
                isFill.toggle() //si on appuie sur le bouton isFill == true donc étoile remplis
                cartManager.addToCart(product: animals) //on ajoute l'animal dans notre panier
            }label: {
                Image(systemName:isFill ? "star.fill":"star")
                    .frame(width:6, height: 25)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .background(.ultraThinMaterial)
                    .cornerRadius(100)
                    .padding(.trailing)
            }
            
            
        }
    }
}

struct PoductCard_Previews: PreviewProvider {
    static var previews: some View {
        PoductCard(animals:AnimalsList.infoAnimals[0])
            .environmentObject(CartManager())
    }
}

struct ImageDescriptionView: View {
    var image : String
    var name : String
    var date : String
    var race : String
    
    
    var body: some View {
        VStack {
            Image(image)
                .cornerRadius(20)
            //.padding(.bottom,17)
            VStack{
                HStack(spacing:40){
                    Text(name)
                        .font(.system(size:17,weight: .semibold,design: .default))
                        .foregroundColor(.black)
                    Text(date)
                        .foregroundColor(.secondary)
                        .font(.system(size:16))
                }
                .padding(.bottom, 2)
                Text(race)
                    .multilineTextAlignment(.leading)
                    .frame(width:120)
                    .font(.system(size:13))
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                
            }
            .frame(width: 160, height: 50)
            .padding(.bottom,25)
            //.multilineTextAlignment(.leading)
            
            
            
        }
        //.padding()
        .frame(width: 162, height: 192, alignment: .leading)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
    }
}
