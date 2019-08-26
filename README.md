# react-native-simple-alert

## Getting started

`$ npm install react-native-simple-alert --save`

### Mostly automatic installation

`$ react-native link react-native-simple-alert`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-simple-alert` and add `SimpleAlert.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libSimpleAlert.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.mycrewchallenge.SimpleAlertPackage;` to the imports at the top of the file
  - Add `new SimpleAlertPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-simple-alert'
  	project(':react-native-simple-alert').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-simple-alert/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-simple-alert')
  	```


## Usage
```javascript
import SimpleAlert from 'react-native-simple-alert';

SimpleAlert.show('Example message');
```
