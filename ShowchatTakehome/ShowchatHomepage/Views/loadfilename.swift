import Foundation

func getAssetFileNames() -> [String] {
    guard let assetPath = Bundle.main.resourcePath else {
        return []
    }

    do {
        let fileURLs = try FileManager.default.contentsOfDirectory(atPath: assetPath)
        return fileURLs
    } catch {
        print("Error reading contents of asset folder: \(error)")
        return []
    }
}

// Example usage
let assetFileNames = getAssetFileNames()
print(assetFileNames)
