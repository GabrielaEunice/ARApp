import 'package:flutter/material.dart';
import 'package:camera/camera.dart'; //se importo el paquete de la camara

class CameraScreen extends StatefulWidget {
  CameraScreen({Key key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

enum WidgetState {
  NONE,
  LOADING,
  LOADED,
  ERROR
} //dato para manejar el estado/Le dira al usuario el estado de la camara

class _CameraScreenState extends State<CameraScreen> {
  WidgetState _widgetState =
      WidgetState.NONE; //el estado principal de la pantalla, esta función

  List<CameraDescription> _cameras = List<
      CameraDescription>(); //Indica cual camara se va a usar ya que hay camara frontal y trasera
  CameraController _cameraController; //guion bajo lo hace privado

  @override
  void initState() {
    super.initState();
    initializeCamera(); //funcion para inicializar camara
  } //inicializa la camara

  @override
  Widget build(BuildContext context) {
    switch(WidgetState){
      case WidgetState.NONE; //animacion de la pantalla cargandose 
      case WidgetState.LOADING;
     return _buildScaffold(Center(child: CircularProgressIndicator()));//no devuelve el center y renderiza el body
      case WidgetState.LOADED;
      return _buildScaffold(context, CameraPreview(_cameraController)); //va a mostrar lo que esta enfocando la camara en tiempo real 
      case WidgetState.ERROR;
       return _buildScaffold(context, Center(child: Text("Error, la camara no se pudo inicializar. Reinicia la aplicación")));//Mensaje de error
    }
  }

Widget _buildScaffold(BuildContext context, Widget body){ //recibe a body 
return Scaffold(appBar: AppBar(
title: Text("camera flutter"),
centerTitle: true,//el texto esta en el centro
backgroundColor: Colors.transparent, //color de fondo
elevation:0, //se borra la sombra 

),
body: body, //boton para hacer click
floatingActionButton: FloatingActionButton(
  onPressed:(){},
  child: Icon(Icons.camera)
   ),
   floatingActionButtonLocation: FloatingActionButton.centerFloat, //boton en el centro 
),
}

  Future initializeCamera() async {
    //async deja pasar al siguiente paso si es que ya se sabe cual camara se va a usar
    _widgetState =
        WidgetState.LOADING; //estado cambiante de none a loading y asi
    if (mounted)
      setState(
          () {}); //Puede que la el comando se cambie antes de tiempo y cambie de none a loading, por lo tanto se le hace un if para que no pase eso
    _cameras = await availableCameras(); //dice cuales camaras estan disponibles

    _cameraController = new CameraController(
        _cameras(0),
        ResolutioPreset
            .high); //nos pide la camara la resolucion y si se activara el audio

    await _cameraController.initialize(); //inicializa camara

    if (_cameraController
        .value.hasError) //se le pregutna si hay un error ya que es de tipo bool
    {
      _widgetState = WidgetState.ERROR;
      if (mounted) setState(() {});
    } else {
      //si no hay error cambiar a loading
      _widgetState = WidgetState.LOADING;
      if (mounted) setState(() {});
    }
  }
}

//Se uso un plug in para acceder a la camara

/*class Ar extends StatelessWidget {
  @override
  _Ar createState() => _Ar();
}

class _Ar extends State<Ar> {
  File? imageFile;

  void_getFromCamera() async {
    Xfile? pickedFile = await ImagePicker().getImage(
      source:ImageSource.camera
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }*/
//https://www.youtube.com/watch?v=l4JpShEES7s