import 'dart:async';
import 'package:flutter/material.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage>
    with SingleTickerProviderStateMixin {
  late Timer _timer;
  bool _isRunning = false;
  int _elapsedSeconds = 0;
  final int _totalSeconds = 300;

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  void _startTimer() {
    setState(() {
      _isRunning = true;
    });
    _animationController.forward();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_elapsedSeconds < _totalSeconds) {
        setState(() {
          _elapsedSeconds++;
        });
      } else {
        _stopTimer();
      }
    });
  }

  void _stopTimer() {
    _timer.cancel();
    _animationController.reverse();
    setState(() {
      _isRunning = false;
    });
  }

  void _toggleTimer() {
    if (_isRunning) {
      _stopTimer();
    } else {
      _startTimer();
    }
  }

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    double progress = _elapsedSeconds / _totalSeconds;

    return Scaffold(
      appBar: AppBar(
        title: const Text('5 MINUTE MEDITATION', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${_formatTime(_totalSeconds - _elapsedSeconds)}",
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: CircularProgressIndicator(
                          value: progress,
                          strokeWidth: 12,
                          valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.black87),
                          backgroundColor: Colors.black87.withOpacity(0.2),
                        ),
                      ),
                      Text(
                        "${_formatTime(_elapsedSeconds)}",
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: _toggleTimer,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: _isRunning ? Colors.red : Colors.black87,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        _isRunning ? Icons.stop : Icons.play_arrow,
                        color: _isRunning ? Colors.white : Colors.teal,
                        size: 40,
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