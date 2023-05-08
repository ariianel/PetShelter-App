//
//  ProductRow.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 05/05/2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var animal : Animals
    
    var body: some View {
        HStack(spacing: 20){
            Image(animal.image)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width:50)
            VStack(alignment: .leading, spacing: 10){
                Text(animal.prenom)
                    .bold()
                    .foregroundColor(Color.black)
                Text("\(animal.price)€")
                    .foregroundColor(Color("grey"))
                    
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color("LightPink"))
                .onTapGesture {
                    cartManager.removeFromCart(product: animal)
                }
            
        }.padding(.horizontal)
        .frame(maxWidth:.infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static let animals = AnimalsList.infoAnimals
    
    static var previews: some View {
        ProductRow(animal: animals[3])
            .environmentObject(CartManager())
    }
}
