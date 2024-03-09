//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Dmitry Parhomenko on 09.03.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var contentViewVM: ContentViewViewModel
    
    var body: some View {
        
        VStack {
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 90)
            
            Spacer()
            
            ButtonView(contentViewVM: contentViewVM)
            
            Spacer()
        }
        
    }
    
}

#Preview {
    ContentView()
        .environmentObject(ContentViewViewModel())
}


struct ButtonView: View {
    @ObservedObject var contentViewVM: ContentViewViewModel
    
    var body: some View {
        Button(action: contentViewVM.startTimer) {
            Text(contentViewVM.buttonTitle)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
        }
        .frame(width: 199, height: 59)
        .background(.red)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
        
    }
}
