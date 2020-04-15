import UIKit

@IBDesignable
class TextFieldGroupView: UIView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    private func commonInit() {
        nibInit()
    }

    private func nibInit() {
        let nib: UINib = UINib(nibName: "TextFieldGroupView", bundle: Bundle(for: type(of: self)))
        let nibView: UIView = nib.instantiate(withOwner: self, options: nil).first as! UIView

        nibView.frame = self.bounds
        nibView.autoresizingMask = [.flexibleHeight, .flexibleWidth]

        self.addSubview(nibView)
    }
}
