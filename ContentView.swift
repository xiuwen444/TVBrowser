import SwiftUI
import WebKit

struct ContentView: View {
    @State private var urlString = "https://www.google.com"
    @State private var webView = WKWebView()

    var body: some View {
        WebViewContainer(webView: webView, urlString: urlString)
    }
}

struct WebViewContainer: UIViewRepresentable {
    let webView: WKWebView
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
