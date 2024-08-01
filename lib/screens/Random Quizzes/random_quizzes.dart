import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:quiz_coder/colors/colors.dart';

class RandomQuizzes extends StatefulWidget {
  const RandomQuizzes({super.key});

  @override
  State<RandomQuizzes> createState() => _RandomQuizzesState();
}

class _RandomQuizzesState extends State<RandomQuizzes> {
  late Timer _timer;
  int _start = 420; // 7 minutes in seconds
  bool _isQuizStarted = false;
  bool _isQuizFinished = false;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _timer.cancel();
          _isQuizFinished = true;
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void stopTimer() {
    setState(() {
      _timer.cancel();
      _isQuizFinished = true;
    });
  }

  void resetQuiz() {
    setState(() {
      _isQuizStarted = false;
      _isQuizFinished = false;
      _start = 420;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hi Buddy! Here your quiz starts',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              if (!_isQuizStarted && !_isQuizFinished)
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: AppColor.appColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isQuizStarted = true;
                        startTimer();
                      });
                    },
                    child: const Text('Start Quiz'),
                  ),
                ),
              if (_isQuizStarted && !_isQuizFinished) ...[
                Text(
                  'Time Remaining: ${_start ~/ 60}:${(_start % 60).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Resolve the following into Partial Fractions:',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 16.6,
                  ),
                ),
                const SizedBox(height: 10),
                Math.tex(
                  r'\frac{1}{x^2-1}',
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColor.appColor,
                  ),
                  onPressed: () {
                    stopTimer();
                  },
                  child: const Text('Finish'),
                ),
              ],
              if (_isQuizFinished) ...[
                const Text(
                  'Solution:',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '1/(x^2 - 1) = 1/((x - 1)(x + 1))\n'
                      'Let 1/((x - 1)(x + 1)) = A/(x - 1) + B/(x + 1)\n'
                      'Multiply both sides by (x - 1)(x + 1) we get:\n'
                      '1 = A(x + 1) + B(x - 1)\n'
                      'Put x = 1 in the equation:\n'
                      '1 = A(1 + 1) + B(1 - 1)\n'
                      '1 = 2A + 0\n'
                      'A = 1/2\n\n'
                      'Put x = -1 in the equation:\n'
                      '1 = A(-1 + 1) + B(-1 - 1)\n'
                      '1 = 0 - 2B\n'
                      'B = -1/2\n\n'
                      'Put values of A and B in the equation:\n'
                      '1/((x - 1)(x + 1)) = 1/2(x - 1) - 1/2(x + 1)\n'
                      '1/(x^2 - 1) = 1/2(1/(x - 1)) - 1/2(1/(x + 1))',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColor.appColor,
                  ),
                  onPressed: resetQuiz,
                  child: const Text('Restart Quiz'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
