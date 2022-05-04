//
//  TabBarButton.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/03.
//

import SwiftUI

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .font(.custom("Avenir", size: 16))
            .padding(.bottom, 16)
        
    }
}


//
//struct TabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarButton(text: "main", isSelected: )
//    }
//}
