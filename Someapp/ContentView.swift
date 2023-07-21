//
//  ContentView.swift
//  Someapp
//
//  Created by Akash Kallumkal on 2023-07-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            NavigationStack {
                
                
                NavigationLink(destination: ImageView()) {
                    VStack{
                        Image("largerocks")
                            .resizable()
                            .cornerRadius(15)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Text("Large rocks")
                            .italic()
                            .font(.title)
                    }
                }
                Text("Praia da Ursa, Portogallo")
                    .italic()
                    .font(.body)
                Button(action: {
                    print("hello")
                }) {
                    Text("Hello World")
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(15)
                        .foregroundColor(.white)
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
