//
//  SingleCardView.swift
//  Cards
//
//  Created by Ravshanbek Tursunbaev on 2023/05/17.
//

import SwiftUI

struct SingleCardView: View {
    
    @Environment(\.dismiss) var dissmiss
    
    var body: some View {
        NavigationStack{
            Color.yellow
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            dissmiss()
                        }
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
