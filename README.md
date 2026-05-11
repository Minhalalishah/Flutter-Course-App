
# 📱 Flutter Course App

## 👨‍🎓 Student Information
- **Name:** Hafiz Syed Minhal Ali 
- **Student ID:** SE221018  
- **Course:** Mobile App Development  

---

## 📱 Features

- **User Authentication**: Login and registration system with form validation
- **Dashboard**: User profile display with course listings
- **Course Management**: Detailed view for different subjects
- **Responsive Design**: Clean and modern UI with Material Design
- **Image Banners**: Dynamic banner images for different courses
- **Remember Me**: Session persistence functionality
- **Clean Architecture**: Well-organized code structure

## 🎯 Screens

1. **Login Screen**: User authentication with email/password validation
2. **Registration Screen**: New user account creation
3. **Dashboard Screen**: User profile and course list
4. **Detail Screen**: Course-specific information with custom banners

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android Emulator or iOS Simulator

### Installation

1. Clone the repository:
```bash
git clone <your-repository-url>
cd flutter_auth_app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 📦 Dependencies

- `flutter`: Flutter framework
- `shared_preferences: ^2.2.2`: Local storage for user data

## 🏗️ Project Structure

```
lib/
├── controllers/
│   └── auth_controller.dart    # Authentication logic
├── models/
│   └── user_model.dart         # User data model
├── screens/
│   ├── dashboard_screen.dart   # Main dashboard
│   ├── detail_screen.dart      # Course details
│   ├── login_screen.dart       # Login interface
│   └── registration_screen.dart # Registration interface
├── utils/
│   └── validators.dart         # Form validation utilities
└── main.dart                   # App entry point
```

## 📚 Courses Available

1. **Mobile App Development** - Flutter and mobile app development concepts with custom banner
2. **Software Re-engineering** - Software maintenance and modernization
3. **Management Information Systems (MIS)** - Business information systems

## 🎨 UI Features

- **Mobile App Development Banner**: Custom banner image for mobile development course
- **Form Validation**: Email and password validation with error messages
- **Material Design**: Consistent theming and components
- **Navigation**: Smooth screen transitions with proper routing

## 🔐 Authentication

The app includes a simple authentication system with:
- Email validation
- Password requirements
- Remember me functionality
- Session management

## 📱 App Screenshots

### Login Screen
![Login Screen](assets/images/Login.png)

### Registration Screen
![Registration Screen](assets/images/Registration.png)

### Dashboard Screen
![Dashboard Screen](assets/images/Dashboard.png)

### Detail Screen
![Detail Screen](assets/images/Detail.png)

## 📂 Assets

- `assets/images/2045.jpg` - Mobile App Development banner
- `assets/images/banner.png` - Default course banner
- `assets/images/mobile_app_dev_screen.png` - App screenshot
- `assets/images/course_banner.png` - Course banner screenshot
- `assets/images/app_interface.png` - App interface screenshot
- Responsive image handling with proper scaling

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Author
Hafiz Syed Minhal Ali
