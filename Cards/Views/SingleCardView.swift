//
//  SingleCardView.swift
//  Cards
//
//  Created by Ravshanbek Tursunbaev on 2023/05/17.
//

import SwiftUI

struct SingleCardView: View {
    
    @State private var currentModal: ToolbarSelection?
    @Environment(\.dismiss) var dissmiss
    
    var body: some View {
        NavigationStack{
            Color.yellow
                .sheet(item: $currentModal) { item in
                    switch item{
                    default:
                        Text(String(describing: item))
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            dissmiss()
                        }
                    }
                    
                    ToolbarItem(placement: .bottomBar) {
                        BottomToolbar(modal: $currentModal)
                    }
                }
        }
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
    }
}
