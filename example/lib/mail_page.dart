import 'package:example/mail_tile.dart';
import 'package:example/values/vectors.dart';
import 'package:flutter/material.dart';
import 'package:ss_placeholder_view/ssplaceholderview.dart';

class MailPage extends StatefulWidget {
  const MailPage({Key? key}) : super(key: key);

  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  List<Mail> mails = [];
  PlaceHolderState placeholderState = PlaceHolderState.loading;
  String dropdownValue = 'GIF';
  String placeholderImage = 'assets/christmas.gif';
  int id = 1;

  @override
  void initState() {
    super.initState();
  }

  void _addData() {
    mails.addAll(
      [
        Mail(
          sender: 'Medium',
          sub: 'Showcase View',
          msg: 'Check new showcase View',
          date: '25 May',
          isUnread: false,
        ),
        Mail(
          sender: 'Quora',
          sub: 'New Question for you',
          msg: 'Hi, There is new question for you',
          date: '22 May',
          isUnread: false,
        ),
        Mail(
          sender: 'Google',
          sub: 'Flutter 1.5',
          msg: 'We have launched Flutter 1.5',
          date: '20 May',
          isUnread: true,
        ),
        Mail(
          sender: 'Github',
          sub: 'Showcase View',
          msg: 'New star on your showcase view.',
          date: '21 May ',
          isUnread: false,
        ),
        Mail(
          sender: 'Simform',
          sub: 'Credit card Plugin',
          msg: 'Check out our credit card plugin',
          date: '19 May',
          isUnread: true,
        ),
      ],
    );
  }

  void _getData() {
    _addData();
    Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      placeholderState = PlaceHolderState.success;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEE5366),
        centerTitle: true,
        title: const Text(
          'Empty PlaceHolder',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onSelected: (value) {
              setState(() {
                dropdownValue = value as String;
                _changePlaceHolderImage(dropdownValue);
              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("Image"),
                value: "Image",
              ),
              const PopupMenuItem(
                child: Text("SVG"),
                value: "SVG",
              ),
              const PopupMenuItem(
                child: Text("Flare"),
                value: "Flare",
              ),
              const PopupMenuItem(
                child: Text("Rive"),
                value: "Rive",
              ),
              const PopupMenuItem(
                child: Text("Rive HTTP"),
                value: "Rive HTTP",
              ),
              const PopupMenuItem(
                child: Text("GIF"),
                value: "GIF",
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Visibility(
              visible: mails.isEmpty,
              child: TextButton(
                onPressed: _getData,
                child: const Text(
                  'Tap here to get Data',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xffEE5366),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SSPlaceholder(
                state: placeholderState,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MailTile(mails[index % mails.length]);
                    }),
                showPlaceHolder: mails.isEmpty,
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
                ),
                titleTextStyle: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'BebasNeue',
                ),
                subTitleTextStyle: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'BebasNeue',
                ),
                onButtonClick: _getData,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _changePlaceHolderImage(String? newValue) {
    if (newValue == 'Image') {
      placeholderImage = 'assets/loader.png';
    } else if (newValue == 'SVG') {
      placeholderImage = Vectors.keyReleaseIllustration;
    } else if (newValue == 'Flare') {
      placeholderImage = 'assets/Penguin.flr';
    } else if (newValue == 'Rive') {
      placeholderImage = 'assets/off_road_car.riv';
    } else if (newValue == 'Rive HTTP') {
      placeholderImage = 'https://cdn.rive.app/animations/vehicles.riv';
    } else if (newValue == 'GIF') {
      placeholderImage = 'assets/christmas.gif';
    }
  }
}

class Mail {
  String sender;
  String sub;
  String msg;
  String date;
  bool isUnread;

  Mail({
    required this.sender,
    required this.sub,
    required this.msg,
    required this.date,
    required this.isUnread,
  });
}
