//
//  ContentView.swift
//  Menu
//
//  Created by Bichler, Emma R on 1/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuItems = [MenuItem] ()
    var dataService = DataService()
                                 
    var body: some View {
        
        List(menuItems){ item in
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:50)
                    .cornerRadius(10)
                
                Text(item.name)
                    
                
                Spacer()
                
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color(.brown)
                .opacity(0.1))
            
            
        }
        .listStyle(.plain)
        .onAppear(){
            //Call for the data
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    ContentView()
}
