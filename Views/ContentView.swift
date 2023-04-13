import SwiftUI
import SpriteKit

struct ContentView: View {
    
    // classe para exibicao de cenários
    var scene: SKScene {
        let scene = InitialGameScene()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene.scaleMode = .aspectFill
        scene.anchorPoint = .init(x: 0.5, y: 0.5)
        return scene
    }
    var body: some View {
        VStack{
            SpriteView(scene: scene)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .aspectRatio(CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), contentMode: .fill)
                .ignoresSafeArea()
        
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
