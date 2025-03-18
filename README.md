
# SwiftSuperellipse

![Apple SDK Style Package Image of a Stoplight made of various curved Superellipses](https://lukedrushell.com/SwiftSuperellipse.png)

A Swift package for drawing superellipse shapes added into the standard SwiftUI Shapes type. This package allows you to create smooth, rounded shapes with customizable curvature.

## Features

✨ Draws superellipse shapes with customizable rounding values.

🎨 Includes predefined presets for common shapes.

📱 Fully compatible with SwiftUI.

## Requirements

📌 iOS 13.0, 14.0, 15.0, 16.0, 17.0, 18.0 +

🛠️ Swift 5.3+

## Installation

SwiftSuperellipse is available via Swift Package Manager (SPM).

Using Swift Package Manager

🏗️ Open your Xcode project.

➕ Go to File → Add Packages.

🔗 Enter the repository URL:

https://github.com/LuckDuracell/SwiftSuperellipse

✅ Select the latest version and add it to your project.

## Usage

Basic Superellipse Shape

```import SwiftUI
import SwiftSuperellipse

struct ContentView: View {
    var body: some View {
        Superellipse(5)
            .fill(Color.blue)
            .frame(width: 100, height: 100)
    }
}
```

## Using Presets

### Examples

```Superellipse(.appIcon) // Predefined smooth app icon shape ```
``` Superellipse(.rounded) // More rounded corners ```

### Preset Values

|🎭 Preset|🔢 Value|
|---------|--------|
|.appIcon |5.2     |
|.circle  |2.0     |
|.rounded  |2.5     |
|.bubbly |3.5     |

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT] MIT License

Copyright (c) [2025] [Luke Drushell]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
