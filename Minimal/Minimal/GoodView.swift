//
//  GoodView.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/02.
//

import SwiftUI

struct GoodView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.orange)
                Text("goodView")
        }


    }
}

struct GoodView_Previews: PreviewProvider {
    static var previews: some View {
        GoodView()
    }
}
