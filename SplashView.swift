//
//  SplashView.swift
//  Avocados
//
//  Created by Invotyx Mac on 26/02/2024.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                HomeView()
            } else {
                Rectangle()
                    .background(Color.black)
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("avocado")
                        .resizable()
                        .frame(width: 240,height: 240)
                    .offset(x: 0, y: -35)
                    
                    Text("AVOCADO")
                        .foregroundStyle(.white)
                        .font(.custom("Charter-Roman", size: 42.0))
                }
               
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
