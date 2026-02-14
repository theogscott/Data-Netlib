// swift:Sources/MyLibrary/UI/PackagedXibViewController.swift
import UIKit

public final class PackagedXibViewController: UIViewController {
    // The XIB file must be named exactly “PackagedXibViewController.xib”
    public init() {
        super.init(nibName: nil, bundle: Bundle.module)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
