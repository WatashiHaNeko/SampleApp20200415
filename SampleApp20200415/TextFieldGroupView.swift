import UIKit

@IBDesignable
class TextFieldGroupView: UIView {
    @IBOutlet weak var fieldLabel: UILabel!
    @IBOutlet weak var field: UITextField!

    @IBInspectable var fieldLabelText: String = "" {
        didSet {
            fieldLabel.text = fieldLabelText
        }
    }

    @IBInspectable var fieldPlaceholder: String = "" {
        didSet {
            field.placeholder = fieldPlaceholder
        }
    }

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
