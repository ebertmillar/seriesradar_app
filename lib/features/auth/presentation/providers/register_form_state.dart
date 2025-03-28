import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/auth/shared/inputs/full_name.dart';
import 'package:seriesradar_app/features/auth/shared/inputs/inputs.dart';

final registerFormProvider =
    StateNotifierProvider.autoDispose<RegisterFormNotifier, RegisterFormState>(
        (ref) {
  final registerUserCallback = ref.watch(authProvider.notifier).registerUser;

  return RegisterFormNotifier(registerUserCallback: registerUserCallback);
});

class RegisterFormNotifier extends StateNotifier<RegisterFormState> {
  final Function(String, String, String, String) registerUserCallback;

  RegisterFormNotifier({required this.registerUserCallback})
      : super(RegisterFormState());

  // Métodos para manejar cambios en los campos del formulario

  void onFullNameChanged(String value) {
    final newfullName = FullName.dirty(value: value);
    state = state.copyWith(
        fullName: newfullName,
        isValid: Formz.validate(
            [newfullName, state.email, state.password, state.confirmPassword]));
  }

  void onEmailChanged(String value) {
    final newEmail = Email.dirty(value: value);
    state = state.copyWith(
      email: newEmail,
      isValid: Formz.validate(
          [state.fullName, newEmail, state.password, state.confirmPassword]),
    );
  }

  void onPasswordChanged(String value) {
    final newPassword = Password.dirty(value: value);
    state = state.copyWith(
      password: newPassword,
      isValid: Formz.validate(
          [state.fullName, state.email, newPassword, state.confirmPassword]),
    );
  }

  void onConfirmPasswordChanged(String value) {
    final newConfirmPassword = Password.dirty(value: value);
    state = state.copyWith(
      confirmPassword: newConfirmPassword,
      isValid: Formz.validate(
          [state.fullName, state.email, state.password, newConfirmPassword]),
    );
  }

  // Método para enviar el formulario
  Future<void> onFormSubmit() async {
    _touchEveryField(); // Marca todos los campos como tocados

    if (!state.isValid) return;
    // Verificar si las contraseñas coinciden

    state = state.copyWith(isPosting: true);

    // Llama a la función de registro
    await registerUserCallback(state.email.value, state.password.value,
        state.fullName.value, state.confirmPassword.value);

    state = state.copyWith(isPosting: false);
  }

  // Marca todos los campos como tocados
  void _touchEveryField() {
    final fullName = FullName.dirty(value: state.fullName.value);
    final email = Email.dirty(value: state.email.value);
    final password = Password.dirty(value: state.password.value);
    final confirmPassword = Password.dirty(value: state.confirmPassword.value);

    state = state.copyWith(
      isFormPosted: true,
      fullName: fullName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      isValid: Formz.validate([email, password, confirmPassword]),
    );
  }
}

// Define el estado del formulario de registro
class RegisterFormState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final FullName fullName;
  final Email email;
  final Password password;
  final Password confirmPassword;
  final String errorMessage;

  RegisterFormState({
    this.isPosting = false,
    this.isFormPosted = false,
    this.isValid = false,
    this.fullName = const FullName.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.errorMessage = '',
    this.confirmPassword = const Password.pure(),
  });

  // Función para hacer una copia del estado con cambios
  RegisterFormState copyWith({
    bool? isPosting,
    bool? isFormPosted,
    bool? isValid,
    FullName? fullName,
    Email? email,
    Password? password,
    Password? confirmPassword,
    String? errorMessage,
  }) =>
      RegisterFormState(
          isPosting: isPosting ?? this.isPosting,
          isFormPosted: isFormPosted ?? this.isFormPosted,
          isValid: isValid ?? this.isValid,
          fullName: fullName ?? this.fullName,
          email: email ?? this.email,
          password: password ?? this.password,
          confirmPassword: confirmPassword ?? this.confirmPassword,
          errorMessage: errorMessage ?? this.errorMessage);

  @override
  String toString() {
    return '''
        isPosting: $isPosting
        isFormPosted: $isFormPosted
        isValid: $isValid
        email: $email
        password: $password
        fullName: $fullName
        confirmPassword: $confirmPassword
        erroMessafge: $errorMessage
      ''';
  }
}
