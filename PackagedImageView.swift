// swift:Sources/MyLibrary/UI/PackagedImageView.swift
import SwiftUI

public struct PackagedImageView: View {
    public init() {}   // Public initializer so the app can create it
    
    public var body: some View {
        Image("logo", bundle: .module)          // “logo.png” lives in Resources/Images/
            .resizable()
            .scaledToFit()
    }
}
