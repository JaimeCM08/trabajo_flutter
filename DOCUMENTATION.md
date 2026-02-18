# Mental Health App - Flutter

## 📱 Aplicación de Asistencia para la Salud Mental y Ataques de Pánico

Esta aplicación móvil proporciona herramientas y recursos para ayudar a las personas que experimentan ataques de pánico o ansiedad, ofreciendo ejercicios de respiración, técnicas de relajación, y acceso rápido a contactos de emergencia.

## 🏗️ Estructura del Proyecto

El proyecto sigue una arquitectura limpia y organizada:

```
lib/
├── main.dart                    # Punto de entrada de la aplicación
├── models/                      # Modelos de datos
│   ├── contact.dart            # Modelo de contacto personal
│   └── exercise.dart           # Modelo de ejercicio
├── screens/                     # Pantallas de la aplicación
│   ├── login_screen.dart       # Pantalla de inicio de sesión
│   ├── signup_screen.dart      # Pantalla de registro
│   ├── home_screen.dart        # Dashboard principal
│   ├── exercise_list_screen.dart   # Lista de ejercicios
│   ├── exercise_detail_screen.dart # Detalle de ejercicio
│   ├── favorites_screen.dart   # Ejercicios favoritos
│   ├── contacts_screen.dart    # Contactos de emergencia
│   └── settings_screen.dart    # Configuración
├── utils/                       # Utilidades y constantes
│   ├── app_colors.dart         # Paleta de colores
│   └── app_theme.dart          # Tema de la aplicación
└── widgets/                     # Widgets reutilizables
    ├── custom_button.dart      # Botón personalizado
    └── empty_state.dart        # Widget para estados vacíos
```

## 🎨 Características Principales

### 1. **Autenticación**
- Pantalla de inicio de sesión con validación de email y contraseña
- Pantalla de registro de nuevos usuarios
- Logo con ícono de hoja (eco) representando calma y naturaleza

### 2. **Dashboard Principal**
- Pregunta "¿Qué tal estás hoy?" para evaluar el estado del usuario
- Acceso rápido a ejercicios según el estado:
  - **Pre-ataque**: Ejercicios preventivos (verde)
  - **Durante Ataque**: Técnicas de emergencia (naranja)
- Botón SOS flotante para llamadas de emergencia
- Navegación inferior con 4 secciones principales

### 3. **Ejercicios**

#### Ejercicios Pre-ataque (Preventivos):
1. **Respiración Diafragmática** (5 min)
2. **Relajación Muscular Progresiva** (10 min)
3. **Mindfulness - Atención Plena** (10 min)
4. **Visualización Positiva** (7 min)

#### Ejercicios Durante el Ataque:
1. **Técnica 5-4-3-2-1** (5 min) - Conexión con los sentidos
2. **Respiración 4-7-8** (3 min) - Calmar el sistema nervioso
3. **Conexión con el Presente** (3 min) - Anclaje al momento actual
4. **Agua Fría** (2 min) - Técnica de interrupción

### 4. **Pantalla de Detalle de Ejercicio**
- Descripción completa del ejercicio
- Pasos numerados y claros
- Duración estimada
- Botón para agregar/quitar de favoritos
- Botón "Comenzar Ejercicio"
- Diseño visual con colores según categoría

### 5. **Favoritos**
- Lista de ejercicios marcados como favoritos
- Acceso rápido a ejercicios más utilizados
- Estado vacío cuando no hay favoritos

### 6. **Contactos Personales**
- Contacto de emergencia 911 destacado en rojo
- Lista de contactos personales de confianza
- Agregar nuevos contactos con nombre, teléfono y relación
- Llamar directamente desde la app
- Eliminar contactos

### 7. **Ajustes**
- Información de cuenta de usuario
- Cambiar contraseña
- Activar/desactivar notificaciones
- Modo nocturno (tema oscuro)
- Selección de idioma
- Centro de ayuda
- Términos y condiciones
- Política de privacidad
- Información de la app
- Cerrar sesión

### 8. **Navegación**
- BottomNavigationBar con 4 opciones:
  - **Inicio**: Dashboard principal
  - **Favoritos**: Ejercicios guardados
  - **Contactos**: Personas de confianza
  - **Ajustes**: Configuración

## 🎨 Paleta de Colores

```dart
// Colores principales (verdes - calma y naturaleza)
Primary Green:    #4CAF50
Light Green:      #81C784
Dark Green:       #388E3C
Leaf Green:       #66BB6A

// Fondos
Background:       #F5F5F5
Card Background:  #FFFFFF
Soft Background:  #E8F5E9

// Emergencia/SOS
Emergency Red:    #E53935
SOS Orange:       #FF6F00

// Texto
Text Primary:     #212121
Text Secondary:   #757575
Text Hint:        #BDBDBD
```

## 🚀 Cómo Ejecutar la Aplicación

### Requisitos Previos
- Flutter SDK (3.0.0 o superior)
- Dart SDK
- Android Studio / VS Code con extensiones de Flutter
- Emulador Android/iOS o dispositivo físico

### Pasos de Instalación

1. **Clonar el repositorio**
```bash
git clone https://github.com/JaimeCM08/trabajo_flutter.git
cd trabajo_flutter
```

2. **Instalar dependencias**
```bash
flutter pub get
```

3. **Verificar la instalación de Flutter**
```bash
flutter doctor
```

4. **Ejecutar la aplicación**
```bash
flutter run
```

## 📦 Dependencias

- `flutter`: SDK de Flutter
- `cupertino_icons`: Iconos de iOS
- `flutter_lints`: Reglas de linting

## 🔧 Configuración

El archivo `pubspec.yaml` contiene la configuración del proyecto:
- Nombre del paquete
- Versión
- Dependencias
- Assets (imágenes)

## 📱 Flujo de Usuario

1. **Inicio**: Usuario abre la app y ve la pantalla de login
2. **Login/Registro**: Inicia sesión o crea una cuenta nueva
3. **Dashboard**: Ve la pregunta "¿Qué tal estás hoy?" y opciones
4. **Selección**: Elige entre Pre-ataque o Durante Ataque
5. **Lista de Ejercicios**: Ve ejercicios disponibles para su situación
6. **Detalle**: Selecciona un ejercicio y ve los pasos
7. **Ejecución**: Comienza el ejercicio guiado
8. **Favoritos**: Puede guardar ejercicios para acceso rápido
9. **Contactos**: Gestiona contactos de emergencia
10. **Ajustes**: Personaliza la experiencia de la app

## 🆘 Función de Emergencia

- Botón SOS flotante en el dashboard
- Acceso directo a llamada 911
- Diálogo de confirmación antes de llamar
- Contactos personales de emergencia accesibles

## 🌙 Modo Nocturno

La aplicación incluye soporte para tema oscuro que se puede activar desde la configuración:
- Colores ajustados para reducir fatiga visual
- Mantiene la legibilidad
- Preserva la identidad visual de la app

## 📝 Notas de Desarrollo

### Extensibilidad
- Fácil agregar nuevos ejercicios en `exercise_list_screen.dart`
- Los modelos son simples y extensibles
- Widgets reutilizables en la carpeta `widgets/`
- Colores centralizados para fácil personalización

### Mejoras Futuras
- Integración con backend para persistencia de datos
- Timer integrado para ejercicios
- Estadísticas de uso
- Notificaciones programadas
- Integración real de llamadas telefónicas
- Modo sin conexión completo
- Más ejercicios y técnicas
- Videos guiados
- Diario de emociones
- Integración con profesionales de salud mental

## 📄 Licencia

Este proyecto es de código abierto y está disponible para fines educativos.

## 👥 Contribuir

Las contribuciones son bienvenidas. Por favor:
1. Fork el proyecto
2. Crea una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abre un Pull Request

## 📞 Soporte

Para soporte o preguntas, por favor abre un issue en el repositorio de GitHub.

---

**Nota**: Esta aplicación es una herramienta de apoyo y no reemplaza el tratamiento profesional. Si experimentas síntomas graves de ansiedad o ataques de pánico, por favor consulta con un profesional de la salud mental.
