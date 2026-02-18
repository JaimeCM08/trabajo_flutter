# App Flow and Architecture

## Application Flow Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                      App Launch                             │
│                      (main.dart)                            │
└────────────────────────┬────────────────────────────────────┘
                         │
                         ▼
┌─────────────────────────────────────────────────────────────┐
│                   Login Screen                              │
│  - Email input                                              │
│  - Password input                                           │
│  - Login button                                             │
│  - Link to Sign Up                                          │
└────────────────────────┬────────────────────────────────────┘
                         │
                         ▼
┌─────────────────────────────────────────────────────────────┐
│                   Sign Up Screen                            │
│  - Name input                                               │
│  - Email input                                              │
│  - Password input                                           │
│  - Confirm password                                         │
│  - Sign up button                                           │
└────────────────────────┬────────────────────────────────────┘
                         │
                         ▼
┌─────────────────────────────────────────────────────────────┐
│              Home Screen (BottomNavigation)                 │
│                                                             │
│  ┌──────────┬──────────┬──────────┬──────────┐            │
│  │  Home    │Favorites │ Contacts │ Settings │            │
│  │   Tab    │   Tab    │   Tab    │   Tab    │            │
│  └──────────┴──────────┴──────────┴──────────┘            │
└─────────────────────────────────────────────────────────────┘
        │              │            │            │
        ▼              ▼            ▼            ▼
┌───────────────┐ ┌──────────┐ ┌─────────┐ ┌──────────┐
│   Dashboard   │ │Favorites │ │Contacts │ │ Settings │
│               │ │  Screen  │ │ Screen  │ │  Screen  │
└───────┬───────┘ └────┬─────┘ └────┬────┘ └────┬─────┘
        │              │            │            │
        ▼              │            │            │
┌───────────────┐      │            │            │
│¿Qué tal estás?│      │            │            │
└───────┬───────┘      │            │            │
        │              │            │            │
   ┌────┴────┐         │            │            │
   │         │         │            │            │
   ▼         ▼         │            │            │
┌────────┐ ┌────────┐ │            │            │
│Pre-    │ │Durante │ │            │            │
│ataque  │ │Ataque  │ │            │            │
└───┬────┘ └───┬────┘ │            │            │
    │          │       │            │            │
    └────┬─────┘       │            │            │
         ▼             │            │            │
┌──────────────────┐   │            │            │
│ Exercise List    │   │            │            │
│  - Respiración   │   │            │            │
│  - Relajación    │   │            │            │
│  - Mindfulness   │   │            │            │
│  - etc.          │   │            │            │
└────────┬─────────┘   │            │            │
         │             │            │            │
         ▼             │            │            │
┌──────────────────┐   │            │            │
│Exercise Detail   │◄──┘            │            │
│  - Description   │                │            │
│  - Steps         │                │            │
│  - Duration      │                │            │
│  - Start button  │                │            │
│  - Favorite ⭐   │                │            │
└──────────────────┘                │            │
                                    │            │
                                    ▼            │
                           ┌──────────────┐     │
                           │Add Contact   │     │
                           │Call Contact  │     │
                           │Delete Contact│     │
                           │911 Emergency │     │
                           └──────────────┘     │
                                                 │
                                                 ▼
                                        ┌──────────────┐
                                        │Account Info  │
                                        │Notifications │
                                        │Dark Mode     │
                                        │Language      │
                                        │Help          │
                                        │About         │
                                        │Logout        │
                                        └──────────────┘
```

## Data Models

```
Exercise Model
├── id: String
├── title: String
├── description: String
├── category: String ('pre-ataque' | 'durante-ataque')
├── imageUrl: String?
├── steps: List<String>
├── duration: int (minutes)
└── isFavorite: bool

Contact Model
├── id: String
├── name: String
├── phone: String
└── relation: String?
```

## Color Theme

```
AppColors
├── Primary Colors (Green Theme)
│   ├── primaryGreen: #4CAF50
│   ├── lightGreen: #81C784
│   ├── darkGreen: #388E3C
│   └── leafGreen: #66BB6A
│
├── Background Colors
│   ├── backgroundColor: #F5F5F5
│   ├── cardBackground: #FFFFFF
│   └── softBackground: #E8F5E9
│
├── Emergency Colors
│   ├── emergencyRed: #E53935
│   └── sosOrange: #FF6F00
│
└── Text Colors
    ├── textPrimary: #212121
    ├── textSecondary: #757575
    └── textHint: #BDBDBD
```

## Screen Components

### Login Screen
```
├── App Logo (Leaf Icon)
├── "Bienvenido" Title
├── Email TextField
├── Password TextField
├── Forgot Password Link
├── Login Button
└── Sign Up Link
```

### Home Dashboard
```
├── AppBar with Notifications
├── "¿Qué tal estás hoy?" Header
├── Pre-ataque Card
├── Durante Ataque Card
├── Quick Access Section
│   ├── Favorites Card
│   └── Contacts Card
└── SOS Floating Action Button
```

### Exercise List
```
├── AppBar with Title
└── ListView of Exercise Cards
    ├── Icon
    ├── Title
    ├── Description
    ├── Duration Badge
    └── Favorite Button
```

### Exercise Detail
```
├── AppBar with Favorite Action
├── Header Card (with icon and duration)
├── Description Section
├── Steps Section (Numbered)
├── Tips Card
└── "Comenzar Ejercicio" Button
```

### Favorites Screen
```
├── AppBar
├── Exercise List (if has favorites)
└── Empty State (if no favorites)
```

### Contacts Screen
```
├── AppBar
├── 911 Emergency Card (highlighted)
├── Contact List
│   ├── Avatar
│   ├── Name
│   ├── Phone
│   ├── Relation
│   ├── Call Button
│   └── Delete Button
└── Add Contact FAB
```

### Settings Screen
```
├── Account Section
│   ├── Profile Info
│   └── Change Password
│
├── Preferences Section
│   ├── Notifications Toggle
│   ├── Dark Mode Toggle
│   └── Language Option
│
├── Help & Support Section
│   ├── Help Center
│   ├── Terms & Conditions
│   ├── Privacy Policy
│   └── About
│
└── Logout Button
```

## Widget Hierarchy

```
MaterialApp (main.dart)
└── Theme (AppTheme)
    └── LoginScreen
        └── (on login success) → HomeScreen
            ├── BottomNavigationBar
            └── IndexedStack
                ├── DashboardScreen
                │   └── Exercise Cards → ExerciseListScreen
                │       └── Exercise Items → ExerciseDetailScreen
                ├── FavoritesScreen
                │   └── Exercise Items → ExerciseDetailScreen
                ├── ContactsScreen
                │   └── Add/Call/Delete Contacts
                └── SettingsScreen
                    └── Settings Options
```

## Navigation Patterns

1. **Push Navigation** (with back button):
   - Login → Sign Up
   - Dashboard → Exercise List
   - Exercise List → Exercise Detail
   - Dashboard → Favorites (via quick access)
   - Dashboard → Contacts (via quick access)

2. **Replace Navigation** (no back):
   - Login → Home (after successful login)
   - Settings → Login (after logout)

3. **Bottom Navigation** (tabs):
   - Home ↔ Favorites ↔ Contacts ↔ Settings

4. **Modal Navigation** (dialogs):
   - SOS confirmation dialog
   - Add contact dialog
   - Logout confirmation dialog
   - Delete contact confirmation

## Key Features Matrix

| Feature | Screen | Component | Action |
|---------|--------|-----------|--------|
| Authentication | Login/SignUp | Form | Navigate to Home |
| Status Check | Dashboard | Cards | Navigate to Exercises |
| View Exercises | Exercise List | ListView | Navigate to Detail |
| Start Exercise | Exercise Detail | Button | Start timer/guide |
| Save Favorite | Detail/List | IconButton | Toggle favorite |
| Call Emergency | Dashboard/Contacts | FAB/Button | Dial phone |
| Manage Contacts | Contacts | CRUD | Add/Delete contacts |
| Change Theme | Settings | Switch | Toggle dark mode |
| Logout | Settings | Button | Return to Login |

## State Management

Currently using StatefulWidget for local state management:
- Form validation
- Favorite toggling
- Contact management
- Theme switching
- Tab navigation

Future improvements could include:
- Provider for global state
- Bloc for complex state logic
- Riverpod for dependency injection
