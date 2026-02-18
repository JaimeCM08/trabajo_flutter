# Quick Start Guide - Mental Health App

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/JaimeCM08/trabajo_flutter.git
cd trabajo_flutter
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 📱 Navigation Flow

```
Login Screen
    ↓
Home Screen (Dashboard)
    ├── Tab 1: Home (Pre-ataque / Durante Ataque)
    │   └── Exercise List
    │       └── Exercise Detail
    ├── Tab 2: Favorites
    ├── Tab 3: Contacts
    └── Tab 4: Settings
```

## 🎯 Key Features by Screen

### Login & Sign Up
- Email validation
- Password requirements (min 6 characters)
- Navigate to home after authentication

### Home Dashboard
- Status question: "¿Qué tal estás hoy?"
- Two main options:
  - **Pre-ataque** (Green) → Preventive exercises
  - **Durante Ataque** (Orange) → Emergency techniques
- SOS button for 911 call
- Quick access to Favorites and Contacts

### Exercise Lists
**Pre-ataque exercises:**
- Respiración Diafragmática (5 min)
- Relajación Muscular Progresiva (10 min)
- Mindfulness (10 min)
- Visualización Positiva (7 min)

**Durante Ataque exercises:**
- Técnica 5-4-3-2-1 (5 min)
- Respiración 4-7-8 (3 min)
- Conexión con el Presente (3 min)
- Agua Fría (2 min)

### Exercise Detail
- Full description
- Step-by-step instructions
- Duration indicator
- Favorite toggle
- Start button

### Favorites
- Quick access to saved exercises
- Empty state when no favorites
- Remove from favorites option

### Contacts
- Emergency 911 highlighted
- Personal contacts with:
  - Name
  - Phone number
  - Relation (optional)
- Add, call, and delete contacts

### Settings
- Account information
- Change password
- Toggle notifications
- Dark mode switch
- Language selection
- Help center
- Terms & conditions
- Privacy policy
- About app
- Logout

## 🎨 Color Scheme

| Purpose | Color | Hex Code |
|---------|-------|----------|
| Primary (Calm) | Green | #4CAF50 |
| Emergency | Red | #E53935 |
| Warning | Orange | #FF6F00 |
| Background | Light Gray | #F5F5F5 |
| Cards | White | #FFFFFF |

## 📂 Project Structure

```
lib/
├── main.dart              # App entry point
├── models/                # Data models
│   ├── contact.dart
│   └── exercise.dart
├── screens/               # UI screens
│   ├── login_screen.dart
│   ├── signup_screen.dart
│   ├── home_screen.dart
│   ├── exercise_list_screen.dart
│   ├── exercise_detail_screen.dart
│   ├── favorites_screen.dart
│   ├── contacts_screen.dart
│   └── settings_screen.dart
├── utils/                 # Utilities
│   ├── app_colors.dart    # Color constants
│   └── app_theme.dart     # Theme configuration
└── widgets/               # Reusable widgets
    ├── custom_button.dart
    └── empty_state.dart
```

## 🔧 Customization

### Adding New Exercises

Edit `lib/screens/exercise_list_screen.dart`:

```dart
Exercise(
  id: 'unique_id',
  title: 'Exercise Title',
  description: 'Short description',
  category: 'pre-ataque', // or 'durante-ataque'
  duration: 5, // minutes
  steps: [
    'Step 1...',
    'Step 2...',
    // ... more steps
  ],
)
```

### Changing Colors

Edit `lib/utils/app_colors.dart`:

```dart
static const Color primaryGreen = Color(0xFF4CAF50);
// Change to your preferred color
```

### Modifying Theme

Edit `lib/utils/app_theme.dart` to customize:
- Button styles
- Card designs
- Input field appearance
- App bar styles

## 🧪 Testing

Run tests:
```bash
flutter test
```

Run with coverage:
```bash
flutter test --coverage
```

## 📱 Building

### Android
```bash
flutter build apk
```

### iOS
```bash
flutter build ios
```

## 🐛 Troubleshooting

### Common Issues

1. **Dependencies not found:**
   ```bash
   flutter clean
   flutter pub get
   ```

2. **Build errors:**
   ```bash
   flutter doctor
   ```

3. **Hot reload not working:**
   - Press 'r' in terminal to hot reload
   - Press 'R' to hot restart

## 📝 Notes

- This is a demo app for educational purposes
- No real backend integration (uses mock data)
- Phone calls are simulated (not real)
- All data is stored locally (lost on app restart)

## 🆘 Emergency

The app includes:
- SOS button on home screen
- 911 quick call option
- Personal emergency contacts
- All emergency features require actual implementation for production

## 📚 Learn More

- [Flutter Documentation](https://flutter.dev/docs)
- [Material Design 3](https://m3.material.io/)
- [Dart Language](https://dart.dev/)

---

**Remember**: This app is a support tool, not a replacement for professional mental health care.
