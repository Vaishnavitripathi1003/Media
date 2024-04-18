import 'dart:async';

import 'package:flutter/material.dart';

class PageviewwithDots extends StatefulWidget {
  const PageviewwithDots({super.key});

  @override
  State<PageviewwithDots> createState() => _PageviewwithDotsState();
}

class _PageviewwithDotsState extends State<PageviewwithDots> {
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;
  // the index of the current page
  int _activePage = 0;
  final List<String> _pages = [
    "https://media.istockphoto.com/id/1652712343/photo/motivational-and-inspirational-wording.webp?b=1&s=170667a&w=0&k=20&c=tgnpeBKvO7OVnbCNvZ36QqChAwMWBRoSR0WIigNbD0I=",
    "https://media.istockphoto.com/id/1415379761/photo/you-are-stronger-than-you-think.webp?b=1&s=170667a&w=0&k=20&c=5NRaCne-PPlVkxUEXVAxiA5X8-pS9xK3E9UCHLFfwNY=",
    "https://i.pinimg.com/564x/fd/41/8a/fd418a758abc60cdfba6c915aa704352.jpg",
    "https://media.istockphoto.com/id/1355553989/photo/aspiration-concept.jpg?s=612x612&w=0&k=20&c=OPy03EmUcBjEUOQWRbYOAVrEOORxTkY6cZEIn32XHWQ=",
    "https://media.istockphoto.com/id/1334239440/photo/your-mindset-matters.jpg?s=612x612&w=0&k=20&c=aQJZvkWYJQrtdh2pBEc6bMHVbzOkyGkUnySs5h2CGJw=",
    "https://images.unsplash.com/photo-1548438294-1ad5d5f4f063?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1592496431160-00dee11029cf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdGl2YXRpb25hbCUyMHF1b3Rlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1494178270175-e96de2971df9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG1vdGl2YXRpb25hbCUyMHF1b3Rlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://media.istockphoto.com/id/1372389444/photo/if-it-doesnt-challenge-you-it-doesnt-change-you.webp?b=1&s=170667a&w=0&k=20&c=vAFZxpxLKHNQgiJx_Q6grYiAhnBsJ7aS9JV0CYhkQTM=",
    "https://media.istockphoto.com/id/1336153511/photo/change-begins-at-the-end-of-your-comfort-zone.webp?b=1&s=170667a&w=0&k=20&c=uTRjC1rKYMi6BPnH3DD8H9VMANeCXj1UFwtgBbfqnUM="
  ];
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_activePage < _pages.length - 1) {
        _pageController.animateToPage(_activePage + 1,
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      } else {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 300), curve: Curves.easeInToLinear);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    var scrrenwidth=MediaQuery.of(context).size.width;
    var scrrenheight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return ViewForSlider(index);
            },
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom:280,
            height: 100,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: _activePage == index
                              ? Colors.pink
                              : Colors.grey,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ViewForSlider(int index) {
    return Container(
      width:double.infinity,
      height: 200,
      child:Image.network(_pages[index],height: 200,)
    );
  }
}
