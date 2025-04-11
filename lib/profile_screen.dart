import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:matule/share/root_store.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  bool changedName = true;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final RootStore _rootstore = RootStore();

  void changetNameTrue() {
    setState(() {
      widget.changedName = true;
    });
  }

  void changetNameFalse() {
    setState(() {
      widget.changedName = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Align(
          child: Text(
            'Профиль',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Align(
              child: Column(
                children: [
                  SizedBox(height: 48),
                  Image.asset('lib/photo/profile_image.png'),
                  Observer(
                    builder:
                        (_) => Text(
                          '${_rootstore.profileDetails.name}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  ),
                  Text(
                    'Изменить фото профиля',
                    style: TextStyle(
                      color: Color.fromRGBO(72, 178, 231, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 11),
                  GestureDetector(
                    onTap: () {
                      print('code');
                    },
                    child: Container(
                      height: 66,
                      width: 335,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Открыть',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Image.asset('lib/photo/code_profile.png'),
                        ],
                      ),
                    ),
                  ),
                  Observer(
                    builder:
                        (_) => TextField(
                          textAlign: TextAlign.center,
                          onSubmitted: (value) {
                            _rootstore.profileDetails.changeName(value);
                            changetNameTrue();
                          },
                          onTap: () {
                            changetNameFalse();
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: _rootstore.profileDetails.name,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            suffixIcon:
                                widget.changedName
                                    ? Icon(CupertinoIcons.check_mark)
                                    : Icon(CupertinoIcons.clear),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
