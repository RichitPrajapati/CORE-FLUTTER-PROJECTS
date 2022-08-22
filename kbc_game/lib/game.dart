import 'package:flutter/material.dart';
import 'question.dart';

class KBC_game extends StatefulWidget {
  const KBC_game({Key? key}) : super(key: key);

  @override
  State<KBC_game> createState() => _KBC_gameState();
}

class _KBC_gameState extends State<KBC_game> {
  int initialQue = 0;
  int winprize = 1000;
  int win = 0;
  int lose = 0;
  int gameover = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: (initialQue < Question.length && win == 0 && lose == 0)
            ? IndexedStack(
          index: initialQue,
          children: Question.map((Map e) {
            return KBCgame(data: e);
          }).toList(),
        )
            : (initialQue < Question.length && win == 1)
            ? Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                  height: 150,
                  width: 150,
                  child: const Image(
                    image: AssetImage(
                      'assets/images/win.png',
                    ),
                    fit: BoxFit.cover,
                  )),
              const Text("Answer is Correct",
                  style: TextStyle(
                    color: Color(0xffc78640),
                    fontSize: 24,
                  )),
              const SizedBox(height: 25),
              const Text("You Won",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.redAccent,
                  )),
              Text("$winprize",
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.redAccent,
                  )),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    initialQue++;
                    win = 0;
                  });
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff1e1f23),
                  onPrimary: const Color(0xffd6d6d6),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 80),
                ),
              ),
              const Spacer(),
            ],
          ),
        )
            : (initialQue < Question.length && lose == 1)
            ? Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                height: 150,
                width: 150,
                child: const Image(
                  image: AssetImage(
                    'assets/images/lose.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              const Text("Oops!",
                  style: TextStyle(
                    color: Color(0xffd4d4ff),
                    fontSize: 22,
                  )),
              const SizedBox(height: 25),
              const Text("Sorry,You lost",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xffd4d4ff),
                  )),
              const Text("the Game",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xffd4d4ff),
                  )),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    initialQue = 0;
                    lose = 0;
                    winprize = 10000;
                  });
                },
                child: const Text(
                  'Try Again',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff1e1f23),
                  onPrimary: const Color(0xffd6d6d6),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 80),
                ),
              ),
              const Spacer(),
            ],
          ),
        )
            : Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                height: 150,
                width: 150,
                child: const Image(
                  image: AssetImage(
                    'assets/images/win.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const Text("Congratulations",
                  style: TextStyle(
                    color: Color(0xff5b5f62),
                    fontSize: 22,
                  )),
              const SizedBox(height: 25),
              const Text("Game Over",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xffffffff),
                  )),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    initialQue = 0;
                    winprize = 10000;
                  });
                },
                child: const Text(
                  'Restart',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff1e1f23),
                  onPrimary: const Color(0xffd6d6d6),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 80),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget KBCgame({required Map data}) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: data['bgColor'],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['question'],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                const Spacer(flex: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (initialQue < Question.length) {
                            if (data['answer'] == 'A') {
                              winprize = winprize * 2;
                              win = 1;
                            } else {
                              lose = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff1e1f23),
                        onPrimary: const Color(0xffa8a8a9),
                        alignment: Alignment.center,
                        minimumSize: const Size(180, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("A. ${data['A']}"),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (initialQue < Question.length) {
                            if (data['answer'] == 'B') {
                              winprize = winprize * 2;

                              win = 1;
                            } else {
                              lose = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff1e1f23),
                        onPrimary: const Color(0xffa8a8a9),
                        alignment: Alignment.center,
                        minimumSize: const Size(180, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("B. ${data['B']}"),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (initialQue < Question.length) {
                            if (data['answer'] == 'C') {
                              winprize = winprize * 2;

                              win = 1;
                            } else {
                              lose = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff1e1f23),
                        onPrimary: const Color(0xffa8a8a9),
                        alignment: Alignment.center,
                        minimumSize: const Size(180, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("C.${data['C']}"),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (initialQue < Question.length) {
                            if (data['answer'] == 'D') {
                              winprize = winprize * 2;

                              win = 1;
                            } else {
                              lose = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff1e1f23),
                        onPrimary: const Color(0xffa8a8a9),
                        alignment: Alignment.center,
                        minimumSize: const Size(180, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("D.${data['D']}"),
                    ),
                  ],
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

