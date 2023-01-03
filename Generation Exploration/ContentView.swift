//
//  ContentView.swift
//  Generation Exploration
//
//  Created by kasima on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    @State private var steps = 5.0
    @State private var guidanceScale = 5.0
    
    var isEditing = true

    var body: some View {
        VStack {
//            Text("Prompt: personification of Halloween holiday in form of cute girl, short hair, cute hats, unreal engine, highly detailed, artgerm digital illustration, studio ghibli, deviantart, sharp focus, artstation, by Alexei Vinogradov bakery, sweets, emerald eyes")
//            Text("Negative Prompt: bad anatomy, extra legs, extra arms, poorly drawn face, poorly drawn hands, poorly drawn feet, fat, disfigured, out of frame, long neck, poo art, bad hands, bad art, deformed, gun, double head, flowers,asian,hyperrealistic,child")
            // Generation command: swift run StableDiffusionSample "personification of Halloween holiday in form of cute girl, short hair, cute hats, unreal engine, highly detailed, artgerm digital illustration, studio ghibli, deviantart, sharp focus, artstation, by Alexei Vinogradov bakery, sweets, emerald eyes" --negative-prompt "bad anatomy, extra legs, extra arms, poorly drawn face, poorly drawn hands, poorly drawn feet, fat, disfigured, out of frame, long neck, poo art, bad hands, bad art, deformed, gun, double head, flowers,asian,hyperrealistic,child" --resource-path /Users/kasima/src/huggingface/apple/coreml-stable-diffusion-v1-5/split_einsum/compiled/ --output-path /Users/kasima/scratch/swiftcli/explore3 --step-exploration --guidance-exploration
            Image(imageName())
            HStack {
                Slider(value: $steps, in: 10...100, step: 5) { Text("Steps") }
                Text(String(format: "%.f", steps))
            }
            HStack {
                Slider(value: $guidanceScale, in: 5...25, step: 1) { Text("Scale") }
                Text(String(format: "%.f", guidanceScale))
            }
        }
        .padding()
    }

    func imageName() -> String {
        let stepsString = String(format: "%.f", steps)
        let guidanceScaleString = String(format: "%.f", guidanceScale)
        let name = "personification_of_Halloween_holiday_in_form_of_cute_girl,_short_hair,_cute.93.gs\(guidanceScaleString).\(stepsString)"
        print(name)
        return name
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
