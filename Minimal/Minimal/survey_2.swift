//
//  survey_2.siwft.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/02.
//

import SwiftUI



struct survey_2: View {
//
    @ObservedObject var radio_1 = RadioButtons()
    @ObservedObject var radio_2 = RadioButtons()
    @ObservedObject var radio_3 = RadioButtons()
    @ObservedObject var radio_4 = RadioButtons()

    var body: some View {
        VStack(){
                ScrollView {

                    Text("아래 항목을 읽고, 각 항목에 어울리는 숫자를 선택해주세요")
                        .font(.title)
                        .fontWeight(.bold)
    //                    .padding(.horizontal, 30)

                    HStack {
                        Text("2. 질리지 않고 입을 수 있는 디자인인가요?")
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                    }.padding()

                    VStack{

                        jwbanButton1(isPushed:radio_1.isSelected,title: radio_1.title,id: radio_1.id) {

                            radio_1.isSelected = true
                            radio_2.isSelected = false
                            radio_3.isSelected = false
                            radio_4.isSelected = false
                        }
                        jwbanButton2(isPushed:radio_2.isSelected,title: radio_2.title,id: radio_2.id) {

                            radio_1.isSelected = false
                            radio_2.isSelected = true
                            radio_3.isSelected = false
                            radio_4.isSelected = false
                        }
                        jwbanButton3(isPushed:radio_3.isSelected,title: radio_3.title,id: radio_3.id) {

                            radio_1.isSelected = false
                            radio_2.isSelected = false
                            radio_3.isSelected = true
                            radio_4.isSelected = false
                        }
                        jwbanButton4(isPushed:radio_4.isSelected,title: radio_4.title,id: radio_4.id) {

                            radio_1.isSelected = false
                            radio_2.isSelected = false
                            radio_3.isSelected = false
                            radio_4.isSelected = true
                        }
                    }


                    NavigationLink (destination : survey_3()){
                        Text("다음으로")
                    }.disabled(!(radio_1.isSelected || radio_2.isSelected || radio_3.isSelected || radio_4.isSelected))
                        .padding()

                }
                Spacer()
            
        }
    }
}


        struct survey_2_Previews: PreviewProvider {
            static var previews: some View {
                survey_3()
            }
        }



