import SwiftSoup

public extension String {
    mutating func stripHTML(activeFallback : Bool = false) {
        self = stripHTMLTags(with: activeFallback)
    }
    
    fileprivate func stripHTMLTags(with conflictingFallBack: Bool) -> String {
        do {
            let strippedText = try stripHTMLTags()
            return strippedText
        } catch {
            return conflictingFallBack ? "CONFLICT: \(self)" : ""
        }
    }
    
    fileprivate func stripHTMLTags() throws -> String {
        do {
            let doc: Document = try SwiftSoup.parse(self)
            let convertedText = try doc.text()
            return convertedText
        } catch {
            throw error
        }
    }
}
