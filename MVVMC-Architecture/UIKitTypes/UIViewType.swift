

protocol UIViewType: class {
    // swiftlint:disable variable_name
    var translatesAutoresizingMaskIntoConstraints: Bool { get set }

    func addSubview(_ view: UIViewType)
    func addFillerSubview(_ subview: UIViewType)
}
