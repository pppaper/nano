//
//  ContentView.swift
//  Minimal
//
//  Created by 강은비 on 2022/04/28.
//comand+option+좌/우방향키 . 커서는 괄호시작 바로 옆에.

import SwiftUI

struct ContentView: View {
    @State private var showAlert: Bool = false
    @State private var alertText: String = ""
    
    var body: some View {
        NavigationView {
            
            
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    
                    NavigationLink {
                        trayView()
                    } label: {
                        Image(systemName: "tray.2")
                            .font(.system(size: 30))
                    }
                    
                    
                    
                    
                    .padding()
                }
                VStack(alignment: .leading) {
                    
                    Text("구입을 망설이는 물건이 있나요?")
                        .fontWeight(.bold)
                        .font(.title3)
                    Text("구매필요도 테스트를 통해 신중하게 판단해보세요.")
                        .fontWeight(.bold)
                        .font(.title)
                }
                .font(.title)
                .padding()
                Spacer()
                
                VStack {
                    HStack(alignment: .center, spacing: 40)   {
                        //                        NavigationLink {
                        Button{
                            self.showAlert.toggle()
//                            FurnitureView()
                        } label: {
                            VStack {
                                Image(systemName: "bed.double")
                                    .font(.system(size: 30))
                                Text("가구")
                            }
                        }
                        .alert("짜잔", isPresented: self.$showAlert) { // action
                            Button("취소", role: .cancel) {
                                
                            }
                            Button("확인", role: .none) {
                                
                            }
                        } message: {
                           
                                Text("나중에도 내가 알아볼 수 있도록 이름을 붙여주세요.")
                                TextField("Placeholder", text: self.$alertText)
                        }
                        
                        NavigationLink {
                            survey_1()
                        } label: {
                            VStack {
                                Image(systemName: "tshirt")
                                    .font(.system(size: 30))
                                Text("의류")
                            }
                        }
                        NavigationLink {
                            PlateView()
                        } label: {
                            VStack {
                                Image(systemName: "fork.knife.circle")
                                    .font(.system(size: 30))
                                Text("식기")
                            }
                        }
                        NavigationLink {
                            ElectronicsView()
                        } label: {
                            VStack {
                                Image(systemName: "display")
                                    .font(.system(size: 30))
                                Text("전자기기")
                            }
                        }
                    }
                    .padding([.leading, .bottom, .trailing], 20)
                    
                    
                    HStack(alignment: .center, spacing: 50) {
                        NavigationLink {
                            FoodView()
                        } label: {
                            VStack {
                                Image(systemName: "triangle.lefthalf.filled")
                                    .font(.system(size: 30))
                                Text("먹거리")
                            }
                        }
                        NavigationLink {
                            BooksView()
                        } label: {
                            VStack {
                                Image(systemName: "book.closed")
                                    .font(.system(size: 30))
                                Text("서적")
                            }
                        }
                        NavigationLink {
                            CosmeticsView()
                        } label: {
                            VStack {
                                Image(systemName: "mustache")
                                    .font(.system(size: 30))
                                Text("세면용품")
                            }
                        }
                        NavigationLink {
                            dddView()
                        } label: {
                            VStack {
                                Image(systemName: "guitars")
                                    .font(.system(size: 30))
                                Text("기타")
                            }
                        }
                    }
                }
                .padding()
                Spacer()
                
                Text("구매를 고민중인 제품이 해당하는 아이콘을 찾아 클릭해보세요. 구매필요점수 테스트가 바로 시작됩니다.")
                    .font(.system(size: 14))
                    .padding()
            }
            
        }
        
        
    }
}


struct TrayView: View {
    var body: some View {
        Text("서랍장")
    }
}
struct FurnitureView: View {
    var body: some View {
        Text("가구")
    }
}
struct clothesView: View {
    var body: some View {
        survey_1()
    }
}
struct PlateView: View {
    var body: some View {
        Text("서랍장")
    }
}
struct ElectronicsView: View {
    var body: some View {
        Text("서랍장")
    }
}
struct FoodView: View {
    var body: some View {
        Text("서랍장")
    }
}
struct BooksView: View {
    var body: some View {
        Text("서랍장")
    }
}
struct CosmeticsView: View {
    var body: some View {
        Text("서랍장")
    }
}
struct dddView: View {
    var body: some View {
        Text("서랍장")
    }
}


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
