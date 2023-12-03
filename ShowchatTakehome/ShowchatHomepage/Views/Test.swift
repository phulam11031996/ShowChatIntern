//
//  Tooltip.swift
//  ShowchatHomepage
//
//  Created by Stupid on 11/24/23.
//

import SwiftUI


struct Tooltip: View {
    var text: String
    
    var body: some View {
        VStack(spacing: 0) {
            Triangle()
                .fill(Color.gray)
                .frame(width: 20, height: 10)
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.gray)
                .frame(height: 30)
            
            Text(text)
                .foregroundColor(.white)
                .font(.caption)
                .padding(8)
        }
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct Tooltip: View {
    @State private var isTooltipVisible = false
    
    var body: some View {
        VStack {
            Text("Hover over me")
                .padding()
                .onHover { isHovered in
                    withAnimation {
                        isTooltipVisible = isHovered
                    }
                }
            
            if isTooltipVisible {
                Tooltip(text: "This is a tooltip")
                    .offset(y: -50)
            }
        }
        .padding()
    }
}


#Preview {
    Tooltip()
}
