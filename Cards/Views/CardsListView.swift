//
//  CardsListView.swift
//  Cards
//
//  Created by Ravshanbek Tursunbaev on 2023/05/17.
//

import SwiftUI

struct CardsListView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(0..<10) { _ in
                CardThumbnailView()
                    .onTapGesture {
                        isPresented = true
                    }
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            SingleCardView()
        }
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
    }
}


