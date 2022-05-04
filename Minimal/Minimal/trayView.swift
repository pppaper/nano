//
//  trayView.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/02.
//

import SwiftUI

struct trayView: View {
    
    var body: some View {

        
        
        
        
        VStack(alignment: .trailing) {


          

//            NavigationLink {
//                ContentView()
//            } label: {
//                Image(systemName: "house")
//                    .font(.system(size: 30))
//            }
//            상단 탭
            HStack {
                Text("고민중")
                Text("결국 사버린")
                Text("잘했다")
            }

//            첫 번째 줄
            HStack {
                Image("pants")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.black, lineWidth: 2)
                    }


                VStack(alignment: .leading) {
                    Text("빨간 바지")
                    Text("2022.04.23")
                }
                VStack(alignment: .trailing) {
                    Text("30점")
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                        Image(systemName: "star")
                        Image(systemName: "star")

                    }
                }
            }


//            두 번째 줄
            HStack {
                Image("teapot")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.black, lineWidth: 2)
                    }


                VStack(alignment: .leading) {
                    Text("르크루제 주전자")
                    Text("2022.04.23")
                }
                VStack(alignment: .trailing) {
                    Text("50점")
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                        Image(systemName: "star")

                    }
                }
            }


//            세 번째 줄
            HStack {
                Image("box")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.black, lineWidth: 2)
                    }


                VStack(alignment: .leading) {
                    Text("시즌그리팅")
                    Text("2022.04.23")
                }
                VStack(alignment: .trailing) {
                    Text("10점")
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                        Image(systemName: "star")
                        Image(systemName: "star")
                        Image(systemName: "star")

                    }
                }
            }
        }
    }
}

struct trayView_Previews: PreviewProvider {
    static var previews: some View {
        trayView()
    }
}
