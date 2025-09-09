import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MedicalChatScreen extends StatefulWidget {
  const MedicalChatScreen({super.key});

  @override
  State<MedicalChatScreen> createState() => _MedicalChatScreenState();
}

class _MedicalChatScreenState extends State<MedicalChatScreen> {
  String get apiKey => dotenv.env['GEMINI_API_KEY'] ?? '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Check if API key is available
    if (apiKey.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Text("Medical ChatBot"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.key,
                  size: 64,
                  color: Colors.red,
                ),
                const SizedBox(height: 16),
                const Text(
                  "API Key Missing",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Please add your Gemini API key to the .env file:\nGEMINI_API_KEY=your_key_here",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {}); // Reload to check for API key
                  },
                  child: const Text("Retry"),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text("Medical ChatBot"),
      ),
      body: LlmChatView(
        suggestions: const [
          "I've been feeling dizzy lately. What now?",
          "How do I know if I need to see a doctor?",
          "What should I eat to boost my immunity?"
        ],
        style: LlmChatViewStyle(
          backgroundColor: Colors.white,
          chatInputStyle: ChatInputStyle(
            hintText: "Enter your message",
            decoration: const BoxDecoration().copyWith(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        provider: GeminiProvider(
          model: GenerativeModel(
            model: "gemini-2.0-flash",
            apiKey: apiKey,
            systemInstruction: Content.system(
              "You are a professional medical health assistant. Only respond to health and medically related questions and make them concise and straight to the point without too much explanation."
                  "If a question is unrelated to health or medicine, politely inform the user that you can only answer medical-related queries.",
            ),
          ),
        ),
        welcomeMessage:
        "Hello👋 I'm here to help with your medical questions. Please tell me how I can assist you?"
      ),
    );
  }
}
