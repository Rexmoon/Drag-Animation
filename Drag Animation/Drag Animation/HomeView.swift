//
//  ContentView.swift
//  Drag Animation
//
//  Created by Jose Luna on 2/17/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var position: CGPoint
    
    private var items: [Int]
    
    init() {
        self.position = .zero
        self.items = (1...10).map { $0 }
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            ZStack {
                ForEach(items, id: \.self) { index in
                    CustomShape(size: CGFloat(index) * 10,
                                delay: CGFloat(Double(index) / 10))
                }
            }
            .position(position)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        position = value.location
                    }
            )
        }
    }
}

#Preview {
    HomeView()
}
