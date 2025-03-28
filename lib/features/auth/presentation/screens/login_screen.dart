import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/login_form_state.dart';
import 'package:seriesradar_app/features/auth/shared/widgets/custom_filled_button.dart';
import 'package:seriesradar_app/features/auth/shared/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Imagen y gradiente
              Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(1.0),
                        ],
                        stops: const [0.0, 0.3],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image(
                      image: const NetworkImage(
                        'https://i0.wp.com/lopezdoriga.com/wp-content/uploads/2015/09/Serie.jpg?w=2141&ssl=1',
                      ),
                      height: size.height * 0.45,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: size.height * 0.34,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.0),
                          ],
                          stops: const [0.0, 0.5],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(2, 2),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 30, top: 50),
                          child: Text(
                            "SeriesRadar",
                            style: GoogleFonts.gabarito(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 0,
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Formulario debajo de la imagen
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const _LoginForm(),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿No tienes cuenta?'),
                  TextButton(
                      onPressed: () => context.push('/register'),
                      child: const Text('Crea una aquí'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends ConsumerWidget {
  const _LoginForm();

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);
    final email = loginForm.email.errorMessage;
    final password = loginForm.password.errorMessage;

    ref.listen(authProvider, (previus, next) {
      if (next.errorMessage.isEmpty) return;
      showSnackbar(context, next.errorMessage);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        CustomTextField(
          label: 'Correo electrónico:',
          color: Colors.black,
          icon: const Icon(Icons.email, color: Colors.black),
          onChanged: ref.read(loginFormProvider.notifier).onEmailChanged,
          errorMessage: loginForm.isFormPosted ? email : null,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          label: 'Contraseña:',
          color: Colors.black,
          icon: const Icon(Icons.key, color: Colors.black),
          onChanged: ref.read(loginFormProvider.notifier).onPasswordChanged,
          errorMessage: loginForm.isFormPosted ? password : null,
        ),
        const SizedBox(height: 40),
        CustomFilledButton(
          buttonColor: Colors.black,
          text: 'Iniciar sesión',
          textStyle: GoogleFonts.lato(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            height: 0,
            fontSize: 20,
          ),
          onPressed: loginForm.isPosting
              ? null
              : ref.read(loginFormProvider.notifier).onFormSubmit,
        ),
      ],
    );
  }
}
