import UIKit
import PlaygroundSupport


class viewController : UIViewController{
    override func loadView() {
        super.loadView()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        createNewView()
        
        
        
    }
    func createNewView(){
        let containerFrame = UIView(frame: CGRect(x: 65, y: 100, width: 250, height: 250))
        containerFrame.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        containerFrame.layer.cornerRadius = 50
        view.addSubview(containerFrame)
    }
    /*func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
     
     let view = UIView(frame: CGRect(x: 0, y: 0, width: 640, height: 41
     ))
     
     let gradient: CAGradientLayer = CAGradientLayer(layer: view.layer)
     gradient.frame = view.frame
     
     let lightColor = UIColor(red: 157/256, green: 157/256, blue: 154/256, alpha: 1)
     let darkColor = UIColor(red: 108/256, green: 104/256, blue: 104/256, alpha: 1)
     
     gradient.colors = [lightColor.CGColor, darkColor.CGColor]
     gradient.locations = [0.6 , 0.4]
     gradient.startPoint = CGPoint(x: 1, y: 0.55)
     gradient.endPoint = CGPoint(x: 0, y: 0.45)
     view.layer.insertSublayer(gradient, atIndex: 0)
     
    */
}

let mainView = viewController()
PlaygroundPage.current.liveView = mainView
