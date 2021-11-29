import 'package:camera/camera.dart'; //IMPORTE de nuevo el paquete del siguiente link: https://pub.dev/packages/camera/install
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:proyectoflutter_02/pages/home.dart';
import '../app.dart';
//import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

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
  late List<
          CameraDescription> //se le añadio late ya que no es necesita exprecion de inicialización
      _cameras; //Indica cual camara se va a usar ya que hay camara frontal y trasera
  late CameraController _cameraController; //guion bajo lo hace privado

  @override
  void initState() {
    super.initState();
    initializeCamera(); //funcion para inicializar camara
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;

    switch (_widgetState) {
      case WidgetState.NONE: //animacion de la pantalla cargandose
      case WidgetState.LOADING:
        return buildScaffold(
            context,
            Center(
                child:
                    CircularProgressIndicator())); //no devuelve el center y renderiza el body
      case WidgetState.LOADED:
        return buildScaffold(
            context,
            Stack(
              children: [
                Transform.scale(
                    scale: _cameraController.value.aspectRatio / deviceRatio,
                    child: AspectRatio(
                        aspectRatio: _cameraController.value.aspectRatio,
                        child: CameraPreview(
                            _cameraController))), //va a mostrar lo que esta enfocando la camara en tiempo real
              ],
            ));
      case WidgetState.ERROR:
        return buildScaffold(
            context,
            Center(
                child: Text(
                    "Error al cargar la cámara 😩. Reinicia la apliación."))); //mensaje de error
    }
    return Container();
  }

  Widget buildScaffold(BuildContext context, Widget body) {
    //recibe un body
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //texto se centra
        title: Text("Cámara"),
        backgroundColor: Colors.transparent, //color de fondo
        elevation: 0, //borra las sombras
      ),
      body: body, //boton
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final path = join(
              (await getTemporaryDirectory())
                  .path, //se le creo un metodo temporary
              '${DateTime.now()}.png',
            );

            await _cameraController
                .takePicture(); //toma foto y nos debuelve un objeto tipo xfile /path enseña el objeto de imagen en la app
            Navigator.pop(context, path);
          } catch (e) {
            print(e);
          }
        },
        child: Icon(Icons.camera), //Icono de camara para tomar la foto
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future<void> initializeCamera() async {
    //async deja pasar al siguiente paso si es que ya se sabe cual camara se va a usar
    _widgetState =
        WidgetState.LOADING; //estado cambiante de none a loading y asi
    if (mounted)
      setState(
          () {}); //Puede que la el comando se cambie antes de tiempo y cambie de none a loading, por lo tanto se le hace un if para que no pase eso

    _cameras = await availableCameras(); //dice cuales camaras estan disponibles

    _cameraController = CameraController(
        _cameras[0],
        ResolutionPreset
            .medium); //nos pide la camara la resolucion y si se activara el audio

    await _cameraController.initialize(); //inicializa camara

    if (_cameraController.value.hasError) {
      //se le pregutna si hay un error ya que es de tipo bool
      _widgetState = WidgetState.ERROR;
      if (mounted) setState(() {});
    } else {
      _widgetState = WidgetState.LOADED; //si no hay error cambiar a loading
      if (mounted) setState(() {});
    }
  }

  getTemporaryDirectory() {}
}
