//
//  test.swift
//  Minimal
//
//  Created by 강은비 on 2022/05/02.
//

import SwiftUI


class RadioButtons : ObservableObject {
    
    var id = UUID()
    @Published var isSelected = false
    var title = ""
    
}

struct survey_1: View {
    
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
                        Text("1. 내가 평소에 입던 스타일인가요?")
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
                    
                    
                    NavigationLink (destination : survey_2()){
                        Text("다음으로")
                    }.disabled(!(radio_1.isSelected || radio_2.isSelected || radio_3.isSelected || radio_4.isSelected))
                        .padding()
                    
                }
                Spacer()
            }
        
    }
}

struct jwbanButton1: View {
    
    var isPushed:Bool
    var title:String
    var id:UUID
    let onDetail: () -> Void
    
    var body: some View {
        
        Button(action: {
            
            onDetail()
            
        }) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(isPushed ? .blue : .gray)
                .frame(height:100)
                .overlay(
                    HStack{
                        Group{
                            Text("많이 해당")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            Text(title)
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                )
                .padding(.horizontal)
        }
    }
}

struct jwbanButton2: View {
    
    var isPushed:Bool
    var title:String
    var id:UUID
    let onDetail: () -> Void
    
    var body: some View {
        
        Button(action: {
            
            onDetail()
            
        }) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(isPushed ? .blue : .gray)
                .frame(height:100)
                .overlay(
                    HStack{
                        Group{
                            Text("적당히 해당")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            Text(title)
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                )
                .padding(.horizontal)
        }
    }
}

struct jwbanButton3: View {
    
    var isPushed:Bool
    var title:String
    var id:UUID
    let onDetail: () -> Void
    
    var body: some View {
        
        Button(action: {
            
            onDetail()
            
        }) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(isPushed ? .blue : .gray)
                .frame(height:100)
                .overlay(
                    HStack{
                        Group{
                            Text("조금 해당")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            Text(title)
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                )
                .padding(.horizontal)
        }
    }
}

struct jwbanButton4: View {
    
    var isPushed:Bool
    var title:String
    var id:UUID
    let onDetail: () -> Void
    
    var body: some View {
        
        Button(action: {
            
            onDetail()
            
        }) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(isPushed ? .blue : .gray)
                .frame(height:100)
                .overlay(
                    HStack{
                        Group{
                            Text("거의 안 해당")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            Text(title)
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                )
                .padding(.horizontal)
        }
    }
}



struct survey_1_Previews: PreviewProvider {
    static var previews: some View {
        survey_1()
    }
}


