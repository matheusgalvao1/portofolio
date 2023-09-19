import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatBubble.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10.0,
        ),
        child: Column(
          children: [
            // Centered title on top
            Center(
              child: Text(
                "Welcome to my portfolio my friend!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    physics: const BouncingScrollPhysics(), // Bounce-scrollable
                    reverse: true, // Start from the bottom
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ChatBubble(
                        message: "Message $index",
                        isMe: index % 2 == 0,
                      );
                    },
                  ),
                  // Fading effect at the top and bottom
                  Positioned.fill(
                    child: IgnorePointer(
                      ignoring: true, // Ignore touch events
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(1),
                              Colors.transparent,
                              Colors.transparent,
                              Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(1),
                            ],
                            stops: const [0.0, 0.02, 0.98, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Input area at the bottom
            Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    placeholder: 'Enter your message...',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
                CupertinoButton(
                  child: const Text('Send'),
                  onPressed: () {
                    // Handle send button press
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
