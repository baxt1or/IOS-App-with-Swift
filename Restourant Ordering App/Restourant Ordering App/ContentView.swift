//
//  ContentView.swift
//  Restourant Ordering App
//
//  Created by baxtiyor bekmurodov on 25/03/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
     
            
            TabView {
                HomePreview()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
                OrderListPreview()
                .tabItem {
                    
                    Image(systemName: "bag")
                    Text("Order")
                }
                
                AccountPreview()
                .tabItem {
                    
                    Image(systemName: "person")
                    Text("Account")
                }
            
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}



