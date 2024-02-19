//
//  CustomShape.swift
//  Drag Animation
//
//  Created by Jose Luna on 2/17/24.
//

import SwiftUI

struct CustomShape: View {
    
    private var size: CGFloat = .zero
    private var delay: CGFloat = .zero
    
    init(size: CGFloat, delay: CGFloat) {
        self.size = size
        self.delay = delay
    }
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .frame(height: size)
            .animation(.linear.delay(delay))
    }
}

#Preview {
    CustomShape(size: 50, delay: 1)
}
