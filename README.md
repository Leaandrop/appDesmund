
# Taller 1

## Estructura de Pantallas y Componentes

### 1. SplashScreen
- **Tipo**: `StatefulWidget`
- **Ruta**: `Routes.splash`
- **Tiempo de espera**: 4 segundos
- **Navegación**: Redirige a `Routes.home`
- **Componentes**:
  - `Image.asset`: Logo (`assets/icons/app-logo.png`)
  - `Text`: Nombre de la app ("Desmund")
  - `Text`: Autor (esquina inferior derecha)

### 2. HomeScreen
- **Tipo**: `StatelessWidget`
- **Ruta**: `Routes.home`
- **Componentes**:
  - `Image.asset`: Logo grande (300x300)
  - `Text`: Nombre de la app (`AppStrings.appName`)
  - `Text`: Descripción (`AppStrings.splashTitle`)
  - `OutlinedButton`: "Comienza" → Navega a `Routes.login`
  - `TextButton`: "Regístrate" (pendiente de implementación)

### 3. LoginScreen
- **Tipo**: `StatelessWidget`
- **Ruta**: `Routes.login`
- **Componentes**:
  - `Image.asset`: Logo (180x180)
  - `Text`: Nombre "Desmund"
  - `Text`: Frase motivadora
  - `TextField`: Nombre de usuario con `Icon(Icons.person)`
  - `TextField`: Contraseña con `Icon(Icons.vpn_key)`
  - `OutlinedButton`: "Ingresar" (sin lógica implementada)
  - `TextButton`: "Recupera tu contraseña" (sin lógica implementada)
  - `OutlinedButton.icon`: "Ingresa con Google" (sin lógica implementada)
  - `RichText`: "No tienes cuenta? Regístrate" (sin lógica implementada)

---

## Recursos y Estilos

### Colores personalizados (`AppColors`)
- `backgroundLight`: fondo claro
- `primary`: color primario de botones
- `textPrimary`: color principal para textos

### Tipografía
- Fuente: **RobotoSlab**
- Archivo: `assets/fonts/RobotoSlab-VariableFont_wght.ttf`

### Assets usados
- Logo: `assets/icons/app-logo.png`
- Icono de Google: `assets/icons/google.png`
