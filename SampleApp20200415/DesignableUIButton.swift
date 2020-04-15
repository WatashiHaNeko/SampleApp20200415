import UIKit

@IBDesignable
class DesignableUIButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = .zero {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
