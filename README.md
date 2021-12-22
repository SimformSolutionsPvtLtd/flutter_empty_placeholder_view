# EmptyPlaceholderView

[![Build](https://github.com/SimformSolutionsPvtLtd/flutter_showcaseview/workflows/Build/badge.svg?branch=master)](https://github.com/SimformSolutionsPvtLtd/flutter_showcaseview/actions) [![emptyplaceholderview](https://img.shields.io/pub/v/showcaseview?label=showcaseview)](https://pub.dev/packages/showcaseview)

A Flutter package allows you to add empty placeholder for listview.

## Preview

## Installing

1. Add dependencies to `pubspec.yaml`

   Get the latest version in the 'Installing' tab on [pub.dev](https://pub.dev/packages/calendar_view/install)

    ```yaml
    dependencies:
        empty_placeholder_view: <latest-version>
    ```

2. Run pub get.

   ```shell
   flutter pub get
   ```

3. Import package.

    ```dart
    import 'package:empty_placeholder_view/emptyplaceholderview.dart';
    ```

## Implementation

1. EmptyListPlaceholder.

    ```dart
    EmptyPlaceholder(
          state: placeholderState,
          placeHolderImageConfig: PlaceHolderImageConfig(
            extraPadding: const EdgeInsets.only(bottom: 10),
            placeholderImage: placeholderImage,
            animationName: 'walk',
          ),
          loadingConfig: LoadingConfig(
            loadingTitle: 'Loading Title',
            loadingSubtitle: 'Loading subtitle',
            loadingWidgetName: LoaderName.hourGlass,
            loadingColor: const Color(0xffee5366),
            loadingSize: 40,
            isLoadingOnTop: false,
          ),
          emptyErrorConfig: EmptyErrorConfig(
            emptyTitle: 'No Data Found',
            emptySubtitle: 'Try again..!',
            errorTitle: 'Error...',
            errorSubtitle:
                'An error occurred while loading data. Please retry.',
          ),
          buttonConfig: ButtonConfig(
            buttonColor: const Color(0xffee5366),
            buttonTextColor: Colors.white,
            buttonText: 'Refresh',
            buttonWidth: 20,
            hideButton: false,
          ),
          titleTextStyle: const TextStyle(
            fontSize: 25,
            fontFamily: 'BebasNeue',
          ),
          subTitleTextStyle: const TextStyle(
            fontSize: 20,
            fontFamily: 'BebasNeue',
          ),                    
    )
    ```

2. For loader change :
   - Use SpinKit loader name: e.g `LoaderName.hourGlass`
   - LoaderName is Enum in which all SpinKit Loader name added.

## How to use

Check out the **example** app in the [example](example) directory or the 'Example' tab on pub.dartlang.org for a more complete example.

Methods defined by `EmptyListPlaceholder` class:
| Config class | Name | Parameters | Description | Default Value |
|--------------|------|------------|-------------| --------------|
|| state | PlaceHolderState | PlaceHolder state (idle,loading,success,error) | none |
| PlaceHolderImageConfig | placeholderImage | String | placeholder Image | none |
|| darkPlaceholderImage | String | dark placeholder Image | none |
|| extraPadding | EdgeInsets | dark placeholder Image | none |
|| animationName | String | if flare animation used then animation name | none |
| ButtonConfig | buttonText | String | refresh button text | none |
|| buttonWidth | double | refresh button width | none |
|| buttonColor | Color | refresh button color | none |
|| buttonTextColor | Color | refresh button text color | none |
|| hideButton | bool | refresh button should visible or not | false |
| LoadingConfig | loadingTitle | String | loading title when state is loading | Hold On! |
|| loadingSubtitle | String | loading sub title when state is loading | false |
|| loadingWidgetName | LoaderName | loadingWidgetName based on LoaderName enum | LoaderName.threeBounce |
|| loadingWidget | Widget | loadingWidget  e.g. CircularProgressIndicator() | none |
|| loadingColor | Color | loadingColor for SpinKit indicators | none |
|| loadingSize | double | loadingSize  for SpinKit indicators | none |
|| isLoadingOnTop | bool | loadingWidget  is on top of title or below title | false |
| EmptyErrorConfig | errorTitle | String | error title when state is error | Oops |
|| errorSubtitle | String | error sub title when state is error | Something went wrong! |
|| emptyTitle | String | empty title when state is success | Unavailable |
|| emptySubtitle | String | empty sub title when state is success | false |
| TextStyle | titleFontSize | double | title font size | none |
|| subTitleFontSize | double | sub title font size | none |
|| titleFontFamily | String | title font family | none |
|| subTitleFontFamily | String | sub title font family | none |

## Other Library used:
* __[spinkit](https://pub.dev/packages/flutter_spinkit)__

## License

```text
MIT License

Copyright (c) 2021 Simform Solutions

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
```