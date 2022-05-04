//
//  TestResult.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/02.
// cm+a, ct+i 다 정리됨

import SwiftUI

struct TestResult: View {
    
    var body: some View {
        VStack {
            HStack{
                Text("구매필요도 점수는")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                Text("30점")
                    .font(.system(size: 50))
                    .foregroundColor(.green)
                    .fontWeight(.heavy)
                Text("입니다.")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
            }
            
            Text("😨")
                .padding()
                .font(.system(size: 200))
            Text("정말 이 소비가 가치있다고 생각하세요?")
                .font(.title3)
                .fontWeight(.medium)
                .padding()
            
            NavigationLink (destination : ContentView()){
                //                Text("메인화면으로 가기")
                //                Button (action: { self.shouldPopToRootView = false } ){
                Text("메인화면으로 가기")
            }
        }
    }
    
}




struct TestResult_Previews: PreviewProvider {
    static var previews: some View {
        TestResult()
    }
}
