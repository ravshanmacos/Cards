//
//  ToolbarSelection.swift
//  Cards
//
//  Created by Ravshanbek Tursunbaev on 2023/05/17.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable{
    var id: Int{
        hashValue
    }
    
    case photoModal, frameModal, stickerModal, textModal
}
