import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/register_form_state.dart';
import 'package:seriesradar_app/features/auth/shared/widgets/custom_filled_button.dart';
import 'package:seriesradar_app/features/auth/shared/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Positioned(
                    top: size.height * 0.06,
                    right: size.width * 0.04,
                    child: Text(
                      "Registrate",
                      style: GoogleFonts.gabarito(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 0,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 5,
                    child: Image.network(
                      'https://images.vexels.com/media/users/3/284071/isolated/preview/5843800db753cada7c16c73d1fbb3f06-bebe-koala-lindo.png',
                      height: size.height * 0.3,
                      width: size.width * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipPath(
                    clipper: CloudClipper(),
                    child: Container(
                      height: size.height,
                      color: Colors.white,
                    ),
                  ),
                  ClipPath(
                    clipper: FourWavesClipper(),
                    child: Container(
                      color: Colors.black54.withAlpha(25),
                      height: size.height * 0.6,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.40,
                    left: 0,
                    right: 0,
                    child: const _RegisterForm(), // Usa la nueva clase aquí
                  ),
                ],
              ),
            ),
            // Botón de volver atrás
            Positioned(
              top: 40,
              left: 20,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RegisterForm extends ConsumerWidget {
  const _RegisterForm();

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerForm = ref.watch(registerFormProvider);

    ref.listen(authProvider, (previus, next) {
      if (next.errorMessage.isEmpty) return;
      showSnackbar(context, next.errorMessage);
    });

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(
            label: 'Nombre Completo:',
            hint: 'Escribe aquí',
            color: Colors.black,
            keyboardType: TextInputType.name,
            onChanged: (value) => ref
                .read(registerFormProvider.notifier)
                .onFullNameChanged(value),
            errorMessage: registerForm.isFormPosted
                ? registerForm.fullName.errorMessage
                : null,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            label: 'Correo electrónico:',
            hint: 'Escribe aquí',
            color: Colors.black,
            onChanged: (value) =>
                ref.read(registerFormProvider.notifier).onEmailChanged(value),
            errorMessage: registerForm.isFormPosted
                ? registerForm.email.errorMessage
                : null,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            label: 'Contraseña:',
            color: Colors.black,
            onChanged: (value) => ref
                .read(registerFormProvider.notifier)
                .onPasswordChanged(value),
            errorMessage: registerForm.isFormPosted
                ? registerForm.password.errorMessage
                : null,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            label: 'Confirmar contraseña:',
            color: Colors.black,
            onChanged: (value) => ref
                .read(registerFormProvider.notifier)
                .onConfirmPasswordChanged(value),
            errorMessage: registerForm.isFormPosted
                ? registerForm.confirmPassword.errorMessage
                : null,
          ),
          const SizedBox(height: 30),
          CustomFilledButton(
            buttonColor: Colors.black,
            text: 'Crear cuenta',
            textStyle: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 0,
              fontSize: 20,
            ),
            onPressed: registerForm.isPosting
                ? null
                : () => ref.read(registerFormProvider.notifier).onFormSubmit(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Ya tienes cuenta?'),
              TextButton(
                  onPressed: () {
                    if (context.canPop()) {
                      return context.pop();
                    }
                    context.go('/login');
                  },
                  child: const Text('Ingresa aquí'))
            ],
          ),
        ],
      ),
    );
  }
}

// Clipper para nubes en dos niveles (4 curvas en total)
class CloudClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double waveWidth = size.width / 4;
    double midHeight = size.height * 0.5;

    // Empezamos desde la izquierda
    path.moveTo(0, size.height * 0.35);

    // Primera nube (nivel superior)
    path.quadraticBezierTo(waveWidth * 0.5, size.height * 0.34,
        waveWidth * 0.87, midHeight * 0.73);

    // Segunda nube (nivel inferior)
    path.quadraticBezierTo(
        waveWidth * 1.8, size.height * 0.29, waveWidth * 2.1, midHeight * 0.83);

    // Tercera nube (nivel superior),
    path.quadraticBezierTo(
        waveWidth * 2.3, size.height * 0.39, waveWidth * 2.9, midHeight * 0.77);

    // Cuarta nube (nivel inferior)
    path.quadraticBezierTo(
        waveWidth * 2.8, size.height * 0.24, waveWidth * 4, midHeight * 0.5);

    // Lado derecho recto hacia abajo
    path.lineTo(size.width, size.height);
    // Lado inferior recto
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class FourWavesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double waveWidth = size.width / 4;

    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        waveWidth, size.height, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        waveWidth * 2.8, size.height * 1.1, size.width + 10, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
