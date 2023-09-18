const lettersString = "qwertyuiopasdfghjklñzxcvbnm";
const numberString = "123456789";
const symbols = "^`~´¿'¡?=)(/&%\$#!+'-.,_:;<>";

final arrLetter = lettersString.split("");
final arrNumber = numberString.split("");
final arrSymbols = symbols.split("");

const dangerAlerts = [
  "Debes ingresar tu nombre de usuario.",
  "Debes ingresar un correo electronico",
  "ejemplo@ejemplo.com” es un ejemplo de correo válido",
  "No ingresaste tu contraseña",
  "Debe tener entre 8 y 16 caracteres.",
  "Al menos un numero y caracter especial es requerido.",
  "Asegúrate de que sea la misma contraseña.",
  "Debes aceptar nuestros términos y condiciones.",
  "Ingresa un numero de teléfono (máx. 10 números).",
  "No ingresaste tu lema :c",
  "Ingresa el quiénes son de tu perfil.",
  "Ingresa la misión de tu perfil.",
  "Ingresa la visión de tu perfil.",
];
