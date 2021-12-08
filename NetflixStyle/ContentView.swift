//
//  ContentView.swift
//  NetflixStyle
//
//  Created by 장기화 on 2021/12/07.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netflix Sample"]
    var body: some View {
        NavigationView {
            List(titles, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
