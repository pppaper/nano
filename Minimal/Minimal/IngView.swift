//
//  IngView.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/02.
//

import SwiftUI

struct IngView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
            Text("INGView")
        }
    }
}


struct IngView_Previews: PreviewProvider {
    static var previews: some View {
        IngView()
    }
}
