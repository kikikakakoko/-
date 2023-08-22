import UIKit

class CollectionViewCell: UICollectionViewCell {
    weak var label: UILabel?

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        let label = UILabel(frame: .zero)
        label.contentMode = .scaleAspectFill
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        label.textAlignment = .center
        label.textColor = .white
        self.label = label
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        backgroundColor = .white
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        label?.text = nil
        backgroundColor = .white
    }
}

import UIKit

class SupplementaryView: UICollectionReusableView {

    weak var label: UILabel?
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blue.withAlphaComponent(0.7)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
