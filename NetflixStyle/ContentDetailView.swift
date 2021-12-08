//
//  ContentDetailView.swift
//  NetflixStyle
//
//  Created by 장기화 on 2021/12/07.
//

import SwiftUI

struct ContentDetailView: View {
    @State var item: Item?
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if let item = item {
                Image(uiImage: item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                Text(item.description)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.primary)
                    .background(Color.primary
                                    .colorInvert()
                                    .opacity(0.5))
            } else {
                Color.white
            }
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item0 = Item(description: "agagg", imageName: "poster0")
        ContentDetailView(item: item0)
    }
}
