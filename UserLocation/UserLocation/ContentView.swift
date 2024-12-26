//
//  ContentView.swift
//  UserLocation
//
//

import SwiftUI
import MapKit

struct ContentView: View {

    @StateObject var viewModel = ContentViewModel()

    var body: some View {
        VStack {
            Map(coordinateRegion: viewModel.binding,showsUserLocation: true,userTrackingMode: .constant(.follow))
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                    viewModel.checkIfLocationIsEnabled()
                })

        }

    }
}

#Preview {
    ContentView()
}
