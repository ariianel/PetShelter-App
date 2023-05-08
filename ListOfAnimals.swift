//
//  ListOfAnimals.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 01/02/2023.
//

import SwiftUI

struct ListOfAnimalsView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: (1))]
    @State private var selectedImageIndex: Int = 0 //Change de couleur pour les boutons All, Cat, Dog
    let images = [Image("All"), Image("Cat"), Image("Dog")]
    let labels = ["All", "Cat", "Dog"]
    let cats = AnimalsList.infoAnimals.filter { $0.type == .cat }
    
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    HStack(spacing:200) {
                        Image("takee") //logo
                        HStack{
                            Image("Notification")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode:.fit) //doesnt look stretch
                                .frame(width: 20, height:19)
                                .padding(.top, 4)
                            
                            //Panier qui s'incrémente en fonction des animaux choisis
                            NavigationLink {
                                CartView()
                                    .environmentObject(cartManager)
                            } label: {
                                CartButton(numberOfAnimals: cartManager.products.count)
                        }
                        }
                    }.padding(.bottom, 16)
                    ///////////////          BOUTONS NAV     ////////////////////////
                    HStack (spacing: 20){
                        //On affiche les trois images avec leurs textes associés
                        ForEach(0..<images.count) { index in
                            HStack(spacing:12) {
                                images[index]
                                Text(labels[index])
                                    .bold()
                                    .foregroundColor(selectedImageIndex == index ? Color.white : Color.gray)
                                    .onTapGesture {
                                        self.selectedImageIndex = index
                                    }
                                 
                            }
                            .frame(width: 99,height: 52)
                            //On change la couleur de fond du bouton à la selection
                            .background(selectedImageIndex == index ? Color("LightPink") : Color.white)
                            .cornerRadius(100)
                            .onTapGesture {
                                self.selectedImageIndex = index
                            }
                            //Permet de mettre une bordure arrondie autour des boutons sélectionnés et une bordure grise autour des autres boutons.
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(selectedImageIndex == index ? Color.clear : Color(UIColor.systemGray4), lineWidth: 1)
                            )
                        }
                    }
                    
                    NavigationView{
                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 20) {
                                    ForEach(filteredAnimals) { animal in //on affiche les animaux filtrés
                                        NavigationLink(destination: AnimalDetailView(animal: animal)){ //Au clique ouverture de la page detaillé de l'animal
                                            PoductCard(animals: animal) //affiche les cartes d'animaux
                                                .environmentObject(cartManager)
                                        }
                                    }
                                
                                
                            }.padding()
                        }
                    }
                }
                
            }
        }
    }
    
    //Permet de filtrer en fonction de la catégorie d'animal selectionné
    var filteredAnimals: [Animals] {
        switch selectedImageIndex {
        case 1:
            return cats
        case 2:
            return AnimalsList.infoAnimals.filter { $0.type == .dog }
        default:
            return AnimalsList.infoAnimals
        }
    }
        
}

struct ListOfAnimalsView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfAnimalsView()
    }
}

