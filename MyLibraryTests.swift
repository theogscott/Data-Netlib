// swift:Tests/MyLibraryTests/MyLibraryTests.swift
import Testing
@testable import MyLibrary

@Suite("MyLibrary Resource Tests")
struct ResourceTests {
    
    @Test("Image from package resources loads")
    func imageLoads() async throws {
        // Attempt to fetch the image data from the bundle
        let url = try #require(Bundle.module.url(forResource: "logo", withExtension: nil))
        let data = try Data(contentsOf: url)
        
        #expect(!data.isEmpty, "The packaged image should contain data.")
    }
}
