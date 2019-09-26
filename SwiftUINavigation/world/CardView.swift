import SwiftUI

@available(iOS 13.0, *)
struct CardView: View {
    
    var imageName: String
    var animationDuration: Double
    
    @Binding var showCards: Bool
    @Binding var viewState: CGSize
    
    var body: some View {
        Image(imageName)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 370, height: 240)
            .cornerRadius(20)
            .shadow(radius: 10)
            .offset(x: viewState.width, y: viewState.height)
            .rotationEffect(Angle(degrees: showCards ? 10 : 0)) // 10 : 0
            .animation(.easeInOut(duration: animationDuration))
    }
}

struct CardView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        CardView(imageName: "image1", animationDuration: 1, showCards: .constant(false), viewState: .constant(.zero))
   
  }
    
}
