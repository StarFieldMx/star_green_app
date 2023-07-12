const lettersString = "qwertyuiopasdfghjklñzxcvbnm";
const numberString = "123456789";
const symbols = "^`~´¿'¡?=)(/&%\$#!+'-.,_:;<>";

final arrLetter = lettersString.split("");
final arrNumber = numberString.split("");
final arrSymbols = symbols.split("");

const List<String> mensajes = [
  "Introduce tu nombre de usuario.",
  "Ingresa una dirección de correo válida: “ejemplo@ejemplo.com” ",
  "Ingresa tu contraseña",
  "Ingresa de nuevo tu contraseña.",
  "Tener entre 8 y 16 caracteres.",
  "Tener al menos 1 letra.",
  "Tener al menos 1 número.",
  "Tener al menos 1 símbolo.",
  "Debe aceptar nuestros términos y condiciones.",
  "Ingresa un numero de teléfono (máx. 10 números).",
  "¡Ingresa tu lema!",
  "Ingresa el quiénes son de tu perfil.",
  "Ingresa la misión de tu perfil.",
  "Ingresa la visión de tu perfil.",
];

const mensajesTrue = [
  "Crea tu nombre de usuario.",
  "Dirección de correo válida",
  "Ingresaste tu contraseña",
  "Las contraseñas coinciden.",
  "Tener entre 8 y 16 caracteres.",
  "Tener al menos 1 letra.",
  "Tener al menos 1 número.",
  "Tener al menos 1 símbolo.",
  "Debe aceptar nuestros términos y condiciones.",
  "Ingresa un numero de teléfono (máx. 10 números).",
  "¡Ingresaste tu lema :3!",
  "Ingresa el quiénes son de tu perfil.",
  "Ingresa la misión de tu perfil.",
  "Ingresa la visión de tu perfil.",
];

const mensajesFalse = [
  "Debes ingresar tu nombre de usuario.",
  "“abc@gmail.com” es un ejemplo de correo válido",
  "No ingresaste tu contraseña",
  "Asegúrate de que sea la misma contraseña.",
  "Debe tener entre 8 y 16 caracteres.",
  "Debe tener al menos 1 letra.",
  "Debe tener al menos 1 número.",
  "Debe tener al menos 1 símbolo.",
  "Debes aceptar nuestros términos y condiciones.",
  "Ingresa un numero de teléfono (máx. 10 números).",
  "No ingresaste tu lema :c",
  "Ingresa el quiénes son de tu perfil.",
  "Ingresa la misión de tu perfil.",
  "Ingresa la visión de tu perfil.",
];
