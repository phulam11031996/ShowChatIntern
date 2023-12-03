import SwiftUI

struct Tooltip: View {
    var content: String = "Welcome!\n\nStart watching any show (turn up the volume please), search for what you’re watching here, and have fun!"

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Image(systemName: "arrowtriangle.up.fill")
                    .foregroundColor(.orange)
                    .opacity(0.8)
                LinearGradient(
                    gradient: Gradient(colors: [Color.orange, Color.orange.opacity(0.3)]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .cornerRadius(15)
                .overlay(
                    Text(content)
                        .foregroundColor(.black)
                        .padding()
                )
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    Tooltip()
}
