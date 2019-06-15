import SwiftUI

struct SampleData: Identifiable {
    var id: Int
    var name: String
}

struct ContentView : View {
    let sampleDataList = [
        SampleData(id: 1, name: "sampleName1"),
        SampleData(id: 2, name: "sampleName2"),
        SampleData(id: 3, name: "sampleName3")
    ]
    
    var body: some View {
        NavigationView {
            List(sampleDataList) { sampleData in
                Text(sampleData.name)
            }
            .navigationBarTitle(Text("sample list"))
        }
    }
}
