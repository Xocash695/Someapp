//
//  ContentView.swift
//  Someapp
//
//  Created by Akash Kallumkal on 2023-07-21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack() {
            TabView{
                
                NavigationLink(destination: samuel()) {
                    images1()
                }.navigationTitle("Samuel")
                
                
                NavigationLink(destination: harrison()) {
                    View2().navigationTitle("Harrison")
                }
                
                
            }.tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
        
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct images1: View {
        
        var body: some View {
            
            
            VStack{
                Image("largerocks")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 600)
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                Text("Large rocks")
                    .italic()
                    .font(.title)
                Text("Praia da Ursa, Portogallo")
                    .italic()
                    .font(.body)

            }
            
        }
        
    }
}


struct View2: View {
    var body: some View {
        VStack{
            Image("flowers")
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 600)
                .cornerRadius(15)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
            Text("Dahlias Flowers")
                .italic()
                .font(.title)
            Text("Mexico")
                .italic()
                .font(.body)

        }
    }
}


struct harrison: View {
    var body: some View {
        VStack{
            Text("Harrison")
                .font(.title)
            Image("avatar2")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            Text("22yo  photographer in Mexico")
                .italic()
                .font(.body)

        }
    }
}

struct samuel: View {
    var body: some View {
        VStack{
            Text("Samuel")
                .font(.title)
            Image("avatar1")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            Text("25yo Italian Artist Photographer | Videomaker ")
                .italic()
                .font(.body)

        }
    }
}
