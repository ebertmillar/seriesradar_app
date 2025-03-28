import 'package:formz/formz.dart';

// Define errores posibles para FullName
enum FullNameError { empty, tooShort, invalidCharacters }

// Clase de validación para FullName
class FullName extends FormzInput<String, FullNameError> {
  static final RegExp nameRegExp = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+$');

  // Constructor para representar un campo vacío (sin modificar)
  const FullName.pure() : super.pure('');

  // Constructor para representar un campo con datos ingresados
  const FullName.dirty({String value = ''}) : super.dirty(value);

  // Mensaje de error personalizado
  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == FullNameError.empty) return 'El nombre es requerido';
    if (displayError == FullNameError.tooShort) {
      return 'Debe tener al menos 3 caracteres';
    }
    if (displayError == FullNameError.invalidCharacters) {
      return 'Solo se permiten letras y espacios';
    }
    return null;
  }

  // Validador del campo
  @override
  FullNameError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) return FullNameError.empty;
    if (trimmedValue.length < 3) return FullNameError.tooShort;
    if (!nameRegExp.hasMatch(trimmedValue))
      return FullNameError.invalidCharacters;

    return null;
  }
}
