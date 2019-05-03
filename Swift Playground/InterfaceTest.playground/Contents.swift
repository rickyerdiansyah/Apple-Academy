import UIKit
import PlaygroundSupport

// Sub View didalam container
let view = UIView(frame: CGRect(x: 128, y: 128, width: 256, height: 256))
view.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
view.layer.cornerRadius = 90

let secondView = UIView(frame: CGRect(x: 188, y: 184, width: 136, height: 136))
secondView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
secondView.layer.cornerRadius = 50

// Main View
let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 512, height: 512))
containerView.backgroundColor = .white

PlaygroundPage.current.liveView = containerView
// menambah view dalam container
containerView.addSubview(view)
containerView.addSubview(secondView)
// .addSubView untuk menambah elemen kedalam container



extension UIView {
    func pulse(duration: TimeInterval = 0.3){
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0
        }) {_ in
            UIView.animate(withDuration: duration, animations: {self.alpha = 1})
        }
    }
}
secondView.pulse(duration: 3)
view.pulse(duration: 3)

let label = UILabel(frame: CGRect(x: 128, y: 100, width: 256, height: 28))
label.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
label.textColor = .white
label.textAlignment = .center
label.text = "Pulse Test + Interface"

containerView.addSubview(label)
label.pulse(duration: 4)


// text field
let nameField = UITextField(frame: CGRect(x: 128, y: 386, width: 256, height: 28))
nameField.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
nameField.placeholder = "   Name"

containerView.addSubview(nameField)
