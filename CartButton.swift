//
//  CartButton.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 05/02/2023.
//

import SwiftUI

struct CartButton: View {
    var numberOfAnimals : Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart") //image panier
                .padding(.top, 5)
                .frame(width: 40, height: 25)
                .foregroundColor(Color("grey"))
            //Affichage du nombre d'animaux dans le panier
            if numberOfAnimals > 0 {
                Text("\(numberOfAnimals)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color("LightPink"))
                    .cornerRadius(10)          
            }
                
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfAnimals:1)
    }
}
