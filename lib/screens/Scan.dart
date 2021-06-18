//this page before coding for ui we need to make some changes in folder :
//android,ios
//in android -update minSdkVersion to 21 (or higher)and
//type code in android/app/src/main/AndroidManifest.xml lines 3-6
//in ios- added inside ios/Runner/Info.plist in order the access the camera lines 30-31
// from flutter doc - take camera in flutter
// after this we can start code
//screen-2
//current we just open the camera and we need to add ar for future
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> with WidgetsBindingObserver {

   late CameraController _controller;
   late Future<void> _initContoller;
   var isCameraReady = false;
  // XFile imageFile; for saving the picture but not used


   @override
  void initState() {
    super.initState();
    initCamera();//to initialize the things to start

  }

   // Dispose of the controller when the widget is disposed.
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: FutureBuilder<void>(
        future: _initContoller,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }
// this is the function to initialize all things needed to start the camera
  Future<void> initCamera() async{
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    // Get a specific camera from the list of available cameras.
    // Define the resolution to use.
    _controller = CameraController(firstCamera, ResolutionPreset.high,);
    // Next, initialize the controller. This returns a Future.
    _initContoller = _controller.initialize();
    if (!mounted)
      return;
    setState(() {
      isCameraReady= true;
    });
  }
}
