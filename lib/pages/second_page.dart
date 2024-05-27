import 'package:appdev_final_exam/components/job_info.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 10,
            height: 300,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/apple.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Analytic Data',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(Icons.bookmark_border, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Apple Officer',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    JobInfoBadge(text: 'Full time', isHighlighted: true),
                    SizedBox(width: 8),
                    JobInfoBadge(text: 'Offline'),
                    SizedBox(width: 8),
                    JobInfoBadge(text: '1 Years EXP'),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Discover how you can make an impact: See our areas of work, worldwide locations, and opportunities for students.',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      '\$250 / Month',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '1 Week Ago',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          SizedBox(width: 8),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: CircleAvatar(
                                maxRadius: 15,
                                backgroundColor: Colors.black,
                                child: Center(
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
