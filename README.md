# 🏥 Flutter Medical ChatBot

A modern Flutter application that serves as an intelligent medical assistant powered by Google's Gemini AI. This chatbot provides multimodal support (text, voice, images, files) while strictly focusing on health-related queries.

**Created by Sergie Code** - Teaching programming and building amazing apps!

## 👨‍💻 About the Creator

Hi! I'm **Sergie Code**, a software engineer passionate about teaching programming through practical projects like this medical chatbot.

### 🌐 Connect with me:

- 📸 **Instagram**: https://www.instagram.com/sergiecode
- 🧑🏼‍💻 **LinkedIn**: https://www.linkedin.com/in/sergiecode/
- 📽️ **YouTube**: https://www.youtube.com/@SergieCode
- 😺 **GitHub**: https://github.com/sergiecode
- 👤 **Facebook**: https://www.facebook.com/sergiecodeok
- 🎞️ **TikTok**: https://www.tiktok.com/@sergiecode
- 🕊️ **Twitter**: https://twitter.com/sergiecode
- 🧵 **Threads**: https://www.threads.net/@sergiecode

## 🌟 Features

- 🤖 **AI-Powered Medical Assistant**: Uses Google Gemini 2.0 Flash for intelligent responses
- 🔐 **Secure API Key Management**: Environment variables for API key protection
- 🎯 **Medical-Only Focus**: Restricted to health and medical queries only
- 📱 **Multimodal Input Support**: Text, voice, camera, files, and gallery
- 🎨 **Modern Material 3 UI**: Beautiful and intuitive chat interface
- ⚡ **Simple Architecture**: Clean, beginner-friendly code using GeminiProvider
- 📋 **Health Suggestions**: Pre-defined prompts to help users get started
- 🔒 **Privacy-First**: No data stored, conversations stay local

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio or VS Code
- Gemini API Key from [Google AI Studio](https://aistudio.google.com/)

### 📦 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/sergiecode/flutter-medical-chatbot.git
   cd flutter-medical-chatbot
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Set up your API key**
   
   Copy the `.env.template` file to `.env`:
   ```bash
   cp .env.template .env
   ```
   
   Then edit `.env` and add your Gemini API key:
   ```env
   GEMINI_API_KEY=your_actual_gemini_api_key_here
   ```

4. **Run the application**
   ```bash
   # For Android
   flutter run -d android
   
   # For Windows
   flutter run -d windows
   
   # For Web
   flutter run -d chrome
   ```

## 🔧 Configuration

### 🔑 API Key Setup

Get your free Gemini API key:

1. Go to [Google AI Studio](https://aistudio.google.com/)
2. Sign in with your Google account
3. Click "Get API Key" → "Create API Key"
4. Copy the generated key
5. Paste it into your `.env` file

### 🏗️ Simple Architecture

This project uses a clean, beginner-friendly architecture:
   - The app will prompt for API key on first launch
   - Stored securely using Flutter Secure Storage

3. **Manual Entry**:
   - Leave the .env file empty
   - Enter API key when prompted in the app

### Firebase Setup (Optional)

For advanced features, you can integrate with Firebase:

1. Create a Firebase project
2. Add your Flutter app to the project
3. Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
4. Follow Firebase setup instructions for Flutter

## 📱 App Structure

```
lib/
├── main.dart                 # App entry point with Firebase initialization
└── screens/
    └── chat_screen.dart      # Main chat interface with medical AI
```

## 🎨 UI Features

- **Material 3 Design**: Modern, beautiful interface
- **Medical Theme**: Professional green color scheme
- **Responsive Layout**: Works on all screen sizes
- **Custom Message Bubbles**: Distinct styling for user and AI messages
- **Loading States**: Smooth loading indicators
- **Error Handling**: User-friendly error messages

## 🧠 AI Capabilities

The medical chatbot is configured with specific instructions to:

- ✅ Answer only health and medical-related questions
- ✅ Provide concise, professional medical information
- ✅ Include appropriate medical disclaimers
- ✅ Recommend consulting healthcare professionals for serious issues
- ✅ Use empathetic and supportive language
- ❌ Refuse to answer non-medical questions

### Example Prompts

- "I've been feeling dizzy lately. What could cause this?"
- "What are the symptoms of high blood pressure?"
- "How can I boost my immune system naturally?"
- "What should I do if I have a persistent cough?"

## 🔒 Security & Privacy

- **API Key Protection**: Never hardcoded, stored securely
- **Local Storage**: Secure storage for sensitive data
- **No Data Logging**: Conversations are not stored permanently
- **Privacy First**: Compliant with medical data privacy standards

## ⚠️ Important Disclaimers

- This app provides general medical information only
- Not a substitute for professional medical advice, diagnosis, or treatment
- Always consult qualified healthcare professionals for medical concerns
- Not intended for emergency medical situations

## 🛠️ Dependencies

- `flutter_ai_toolkit: ^0.10.0` - Chat UI and AI integration
- `firebase_core: ^3.5.0` - Firebase initialization
- `firebase_auth: ^5.3.0` - Authentication (optional)
- `flutter_secure_storage: ^9.2.2` - Secure API key storage
- `flutter_dotenv: ^5.1.0` - Environment variables

## 🚀 Future Enhancements

- [ ] Voice-to-text and text-to-speech
- [ ] Medical image analysis
- [ ] Symptom tracking
- [ ] Doctor appointment scheduling
- [ ] Medication reminders
## 📱 Screenshots & Demo

### Mobile Experience
- Clean, medical-focused UI
- Voice input with microphone button
- Camera integration for medical photos
- File upload from gallery

### Desktop Experience  
- Responsive design for Windows/Web
- Keyboard shortcuts support
- File drag-and-drop functionality

## 🧪 Testing the App

### Sample Medical Questions:
```
"I've been feeling dizzy lately. What should I do?"
"What are the symptoms of dehydration?"
"How do I know if I need to see a doctor?"
"What should I eat to boost my immunity?"
"I have a headache, what could cause it?"
```

### Multimodal Features:
- **Voice**: Tap microphone to ask questions verbally
- **Camera**: Take photos of symptoms or medical documents
- **Files**: Upload medical reports or images from gallery

### Non-Medical Test:
Try asking non-medical questions like "What's the weather?" - the AI should politely redirect you to medical topics only.

## 🔧 Troubleshooting

### Common Issues:

1. **API Key Error**: Make sure your `.env` file contains a valid Gemini API key
2. **Build Errors**: Run `flutter clean` and `flutter pub get`
3. **Camera Issues**: Ensure camera permissions are granted on mobile
4. **Voice Input**: Check microphone permissions on your device

### Performance Tips:
- Use Wi-Fi for better response times
- Keep the app updated for latest features
- Clear app cache if experiencing issues

## 🌟 Key Dependencies

```yaml
flutter_ai_toolkit: ^0.6.8    # Chat UI and multimodal support
google_generative_ai: ^0.4.6  # Direct Gemini integration
flutter_dotenv: ^5.1.0        # Environment variables
```

## 🚀 Future Enhancements

- [ ] Push notifications for health reminders
- [ ] Integration with health APIs
- [ ] Health history storage
- [ ] Multi-language support
- [ ] Offline mode for basic features
- [ ] Advanced medical image analysis
- [ ] Integration with wearable devices

## 🎓 Learn More About Flutter & AI

This project demonstrates modern Flutter development with AI integration. Perfect for learning:

- Flutter app architecture
- AI/ML integration in mobile apps
- Multimodal user interfaces
- Environment variable management
- Cross-platform development

### 📚 Follow for More Tutorials:

- 📸 **Instagram**: https://www.instagram.com/sergiecode
- 🧑🏼‍💻 **LinkedIn**: https://www.linkedin.com/in/sergiecode/
- 📽️ **YouTube**: https://www.youtube.com/@SergieCode
- 😺 **GitHub**: https://github.com/sergiecode
- 👤 **Facebook**: https://www.facebook.com/sergiecodeok
- 🎞️ **TikTok**: https://www.tiktok.com/@sergiecode
- 🕊️ **Twitter**: https://twitter.com/sergiecode
- 🧵 **Threads**: https://www.threads.net/@sergiecode

## ⚠️ Medical Disclaimer

This chatbot is for **educational and informational purposes only**. It is not a substitute for professional medical advice, diagnosis, or treatment. Always seek the advice of your physician or other qualified healthcare provider with any questions you may have regarding a medical condition.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 🆘 Support

If you have any questions or need help, please:

1. Check the existing issues
2. Create a new issue with details
3. Contact Sergie Code through social media

---

**Made with ❤️ by Sergie Code**
