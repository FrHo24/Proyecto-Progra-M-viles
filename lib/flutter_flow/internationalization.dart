import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
    String? ptText = '',
  }) =>
      [esText, enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    'hklxceun': {
      'es': 'Registrarse',
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'bzqcdz7e': {
      'es': 'Google',
      'en': '',
      'pt': '',
    },
    'zwb175y6': {
      'es': 'Facebook',
      'en': '',
      'pt': '',
    },
    'z49z5u4s': {
      'es': 'Registrar Cuenta',
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    '4kt5x930': {
      'es': 'ingresar siguiente información:',
      'en': 'Fill out the following information',
      'pt': 'Preencha as seguintes informações',
    },
    '12ljm8sq': {
      'es': 'Email:',
      'en': 'Mail:',
      'pt': 'Correspondência:',
    },
    'ohxf6i6i': {
      'es': 'Contraseña:',
      'en': 'Mail:',
      'pt': 'Correspondência:',
    },
    'tatcadvs': {
      'es': 'Confirmar contraseña',
      'en': 'Password:',
      'pt': 'Senha:',
    },
    'gutbu4io': {
      'es': 'Registrarse',
      'en': 'Begin',
      'pt': 'Começar',
    },
    '9nk8o2vq': {
      'es': 'Ingresar',
      'en': 'Get into',
      'pt': 'Entrar',
    },
    'rhgeqy2d': {
      'es': 'Bienvenido',
      'en': 'welcome back',
      'pt': 'Bem vindo de volta',
    },
    '7c38jde3': {
      'es': 'Ingrese con la infromacion de su cuenta ',
      'en': 'Fill out your account information',
      'pt': 'Preencha as informações da sua conta',
    },
    '0nlrhlpr': {
      'es': 'Correo:',
      'en': 'Mail:',
      'pt': 'Correspondência:',
    },
    '52hjvm1m': {
      'es': 'Contraseña:',
      'en': 'Password:',
      'pt': 'Senha:',
    },
    'fgifs55s': {
      'es': 'Ingresar',
      'en': 'Get into',
      'pt': 'Entrar',
    },
    'a6rfs89i': {
      'es': '¿Olvido la Contraseña?',
      'en': 'Forgot Password?',
      'pt': 'Esqueceu sua senha?',
    },
    'etsnhaik': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // PaginadeIngreso
  {
    'gmva1t6k': {
      'es': 'Fenix Box',
      'en': 'Fenix ​​Box',
      'pt': 'Caixa Fênix',
    },
    'x9jnewqj': {
      'es': 'Inicia',
      'en': 'Start',
      'pt': 'Começar',
    },
    's5zafsvo': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // RecuperarContra
  {
    'igrrbzbp': {
      'es': 'Back',
      'en': 'Back',
      'pt': 'Voltar',
    },
    'tv6j2c45': {
      'es': 'Recuperar Contraseña',
      'en': 'Recover password',
      'pt': 'Recuperar senha',
    },
    'ogni243j': {
      'es':
          'Le enviaremos un correo electrónico a su dirección electrónica registrada con un enlace que le permitirá recuperar su contraseña, por favor ingrese el correo electrónico utilizado en la previa creación de cuenta.',
      'en':
          'We will send you an email to your registered email address with a link that will allow you to recover your password, please enter the email used in the previous account creation.',
      'pt':
          'Iremos enviar-lhe um e-mail para o seu endereço de e-mail registado com um link que lhe permitirá recuperar a sua palavra-passe, por favor insira o e-mail utilizado na criação anterior da conta.',
    },
    'djb6bai8': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'xxp2om25': {
      'es': 'Ingrese su correo electrónico',
      'en': 'Enter your email',
      'pt': 'Digite seu e-mail',
    },
    'jsepbchx': {
      'es': 'Solicitar enlace',
      'en': 'Request link',
      'pt': 'Solicitar link',
    },
    '1nu0for5': {
      'es': 'Recuperar Contraseña',
      'en': 'Back',
      'pt': 'Voltar',
    },
    'qtmgvw5w': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // Ajustes
  {
    'x8q5af7d': {
      'es': 'Cuenta',
      'en': 'Account',
      'pt': 'Conta',
    },
    'azfkmg9v': {
      'es': 'Cambiar Contraseña',
      'en': 'Contact',
      'pt': 'Contato',
    },
    's0qw91kk': {
      'es': 'Recuperar Contraseña',
      'en': 'Contact',
      'pt': 'Contato',
    },
    '63cr1d4c': {
      'es': 'General',
      'en': 'Account',
      'pt': 'Conta',
    },
    'cfja0v7e': {
      'es': 'Lenguaje',
      'en': 'Language',
      'pt': 'Linguagem',
    },
    '97m0oq40': {
      'es': 'Claro',
      'en': 'Clear',
      'pt': 'Claro',
    },
    '8oomm401': {
      'es': 'Oscuro',
      'en': 'Dark',
      'pt': 'Escuro',
    },
    '0r05iqv0': {
      'es': 'Terminos de Servicio',
      'en': 'Terms of Service',
      'pt': 'Termos de serviço',
    },
    'jkf74pdz': {
      'es': 'Ajustes',
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'onplbhv3': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // CambiarContrasena
  {
    'b2bgexof': {
      'es': 'Back',
      'en': 'Back',
      'pt': 'Voltar',
    },
    'h81925zx': {
      'es': 'Cambiar Contraseña',
      'en': 'Recover password',
      'pt': 'Recuperar senha',
    },
    'ithzad5c': {
      'es':
          'Le enviaremos un correo a su dirección de correo registradacion su cuneta con un enlace que le permitirá cambiar su contraseña, por favor ingrese el correo de su cuenta.',
      'en':
          'We will send you an email to your registered email address with a link that will allow you to recover your password, please enter the email used in the previous account creation.',
      'pt':
          'Iremos enviar-lhe um e-mail para o seu endereço de e-mail registado com um link que lhe permitirá recuperar a sua palavra-passe, por favor insira o e-mail utilizado na criação anterior da conta.',
    },
    'hrke00ha': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'zk3z3xne': {
      'es': 'Ingrese su correo electrónico',
      'en': 'Enter your email',
      'pt': 'Digite seu e-mail',
    },
    'jcb92n16': {
      'es': 'Solicitar enlace',
      'en': 'Request link',
      'pt': 'Solicitar link',
    },
    'ouuof5fj': {
      'es': 'Cambiar Contraseña',
      'en': 'Back',
      'pt': 'Voltar',
    },
    't5htbhzd': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // Perfil
  {
    'n6hkwk67': {
      'es': 'Información Personal',
      'en': '',
      'pt': '',
    },
    'eesnuyas': {
      'es': 'Cédula',
      'en': '',
      'pt': '',
    },
    '2muvaexv': {
      'es': 'Número Telefónico',
      'en': '',
      'pt': '',
    },
    'oivitafn': {
      'es': 'Perfil',
      'en': '',
      'pt': '',
    },
    '0sjtcxm5': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // Menu
  {
    '9bsjsg9b': {
      'es': 'Productos/Proveedores',
      'en': '',
      'pt': '',
    },
    '0rk5lv56': {
      'es': 'Cliente/Facturaciones',
      'en': '',
      'pt': '',
    },
    'dsnutosg': {
      'es': 'Administrador/Instructor',
      'en': '',
      'pt': '',
    },
    'vj0kwnto': {
      'es': 'Equipo/Clases',
      'en': '',
      'pt': '',
    },
    'pt0gs5zl': {
      'es': 'Menú',
      'en': '',
      'pt': '',
    },
    'wok70kn2': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // verReservas
  {
    'm2lk5wb0': {
      'es': 'Calendario para ver las reservas',
      'en': '',
      'pt': '',
    },
    'iga8u7i7': {
      'es': 'Reservar',
      'en': '',
      'pt': '',
    },
    'fck008wi': {
      'es': 'Instructor:',
      'en': '',
      'pt': '',
    },
    '02b1trwd': {
      'es': 'BD',
      'en': '',
      'pt': '',
    },
    'uns6m5cb': {
      'es': 'Clase:',
      'en': '',
      'pt': '',
    },
    'lxa3v2p4': {
      'es': 'BD',
      'en': '',
      'pt': '',
    },
    '7aiiop1m': {
      'es': 'Clientes:',
      'en': '',
      'pt': '',
    },
    'doz3h5ma': {
      'es': 'BD',
      'en': '',
      'pt': '',
    },
    'wnwm9kux': {
      'es': 'Hora:',
      'en': '',
      'pt': '',
    },
    'h95nrd8v': {
      'es': 'BD',
      'en': '',
      'pt': '',
    },
    '9y8j5sf5': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'oeywn4uz': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    'afdeghbf': {
      'es': 'Page Title',
      'en': '',
      'pt': '',
    },
    '28653bt6': {
      'es': 'Cerrar Sesión',
      'en': '',
      'pt': '',
    },
    'gq7msw2y': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // agregarReserva
  {
    'e0xbur0n': {
      'es': 'Instructor : ',
      'en': '',
      'pt': '',
    },
    '116qcb2w': {
      'es': 'Intructor',
      'en': '',
      'pt': '',
    },
    '3o7xhg57': {
      'es': 'Option 1',
      'en': '',
      'pt': '',
    },
    'og6a5fkr': {
      'es': 'Seleccione un Instructor',
      'en': '',
      'pt': '',
    },
    't7i0k45d': {
      'es': 'Search for an item...',
      'en': '',
      'pt': '',
    },
    '5y9z8d1h': {
      'es': 'Clase : ',
      'en': '',
      'pt': '',
    },
    'fwxlh12s': {
      'es': 'Clase',
      'en': '',
      'pt': '',
    },
    'jwmptqc5': {
      'es': 'Option 1',
      'en': '',
      'pt': '',
    },
    'eb6hpc1j': {
      'es': 'Seleccione una Clase',
      'en': '',
      'pt': '',
    },
    'ukbd5v0n': {
      'es': 'Search for an item...',
      'en': '',
      'pt': '',
    },
    'tqzhzqbh': {
      'es': 'Agregar',
      'en': '',
      'pt': '',
    },
    'kfi1l967': {
      'es': 'Page Title',
      'en': '',
      'pt': '',
    },
    'k00zury0': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioInstructores
  {
    'on36keim': {
      'es': 'Agregar instructor',
      'en': '',
      'pt': '',
    },
    'zqo3glrb': {
      'es': 'Agregar instructores',
      'en': '',
      'pt': '',
    },
    'vv90e9ye': {
      'es': 'Nombre del instructor...',
      'en': '',
      'pt': '',
    },
    '84jpw1lz': {
      'es': 'Apellidos del instructor...',
      'en': '',
      'pt': '',
    },
    'msglkonl': {
      'es': 'Correo electrónico del instructor...',
      'en': '',
      'pt': '',
    },
    'or9bwh5y': {
      'es': 'Cédula del instructor...',
      'en': '',
      'pt': '',
    },
    'f3wve1w2': {
      'es': 'Número de teléfono...',
      'en': '',
      'pt': '',
    },
    '485menbk': {
      'es': 'Área de trabajo..',
      'en': '',
      'pt': '',
    },
    'm4nzbith': {
      'es': 'Agregar instructor',
      'en': '',
      'pt': '',
    },
    '5lhopjby': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'pqzohcoc': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    'l05hp3wj': {
      'es': 'Gestión de personal',
      'en': '',
      'pt': '',
    },
    'ox0ck7y3': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioAdministradores
  {
    'gd2ssax2': {
      'es': 'Agregar administrador',
      'en': '',
      'pt': '',
    },
    'nozihaes': {
      'es': 'Agregar administradores',
      'en': '',
      'pt': '',
    },
    'cwjmm182': {
      'es': 'Nombre del usuario...',
      'en': '',
      'pt': '',
    },
    'mivn05r2': {
      'es': 'Apellidos del usuario...',
      'en': '',
      'pt': '',
    },
    '2848bfu8': {
      'es': 'Correo electrónico del usuario...',
      'en': '',
      'pt': '',
    },
    'wa7wgc7p': {
      'es': 'Cédula del usuario...',
      'en': '',
      'pt': '',
    },
    'jlbgtiiv': {
      'es': 'Número de teléfono...',
      'en': '',
      'pt': '',
    },
    '0al7c5wn': {
      'es': 'Agregar usuario',
      'en': '',
      'pt': '',
    },
    'cydvqhpm': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    '6jr9vkf7': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '646xqjc8': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    '54h1gjbp': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'qsyaxl48': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'cg5sc6k0': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'amhnjtmi': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'gmz4zo0e': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'krdkn4i6': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    '4a31zqx4': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '2h7zltu6': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'ebsqbsfa': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    'f8wy3uty': {
      'es': 'Gestión de personal',
      'en': '',
      'pt': '',
    },
    'tn346uca': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioProveedores
  {
    'a8c0q5yr': {
      'es': 'Agregar proveedor',
      'en': '',
      'pt': '',
    },
    'l4vj2v9g': {
      'es': 'Agregar proveedores',
      'en': '',
      'pt': '',
    },
    'tnphjo5w': {
      'es': 'Nombre del proveedor...',
      'en': '',
      'pt': '',
    },
    'wf1z01ns': {
      'es': 'Correo electrónico del proveedor...',
      'en': '',
      'pt': '',
    },
    '15qmyt4z': {
      'es': 'Número de teléfono...',
      'en': '',
      'pt': '',
    },
    '199sg2ks': {
      'es': 'Agregar proveedor',
      'en': '',
      'pt': '',
    },
    '8uyynapd': {
      'es': 'Espacio requerido',
      'en': '',
      'pt': '',
    },
    'qhh85fgo': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'z7add1i5': {
      'es': 'Espacio requerido',
      'en': '',
      'pt': '',
    },
    't4nxc7ml': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    's5i1cz0b': {
      'es': 'Espacio requerido',
      'en': '',
      'pt': '',
    },
    'plqu7ds9': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '1s4tqq7l': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'w19tgef3': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    'djspd0id': {
      'es': 'Gestión de personal',
      'en': '',
      'pt': '',
    },
    'xikqjm3m': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioEquipo
  {
    'vpht83nn': {
      'es': 'Agregar equipo',
      'en': '',
      'pt': '',
    },
    '5ersy75d': {
      'es': 'Agregar equipo',
      'en': '',
      'pt': '',
    },
    'f99y54f9': {
      'es': 'Nombre del equipo o máquina...',
      'en': '',
      'pt': '',
    },
    '2j4qzbor': {
      'es': 'Categoría del equipo...',
      'en': '',
      'pt': '',
    },
    'ngmv4kne': {
      'es': 'Cantidad disponible...',
      'en': '',
      'pt': '',
    },
    'kqf5lz24': {
      'es': 'Estado actual...',
      'en': '',
      'pt': '',
    },
    'hguixecs': {
      'es': 'Fecha de pago:',
      'en': '',
      'pt': '',
    },
    '7tg0sxzb': {
      'es': 'Agregar equipo',
      'en': '',
      'pt': '',
    },
    'fg1i0jkd': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'lj7si7hi': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    'zqivtssf': {
      'es': 'Gestión de personal',
      'en': '',
      'pt': '',
    },
    '7h2k8scc': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioClases
  {
    '2006utf0': {
      'es': 'Agregar clase',
      'en': '',
      'pt': '',
    },
    'k88fpwuo': {
      'es': 'Agregar proveedores',
      'en': '',
      'pt': '',
    },
    'xxwdc303': {
      'es': 'Nombre de la clase...',
      'en': '',
      'pt': '',
    },
    '74samfy2': {
      'es': 'Descripcion de la clase...',
      'en': '',
      'pt': '',
    },
    's36htil0': {
      'es': 'Intructor que la imparte...',
      'en': '',
      'pt': '',
    },
    'j1eu7zch': {
      'es': 'Cantidad de clientes maxima...',
      'en': '',
      'pt': '',
    },
    'frnf00lw': {
      'es': 'Agregar clase',
      'en': '',
      'pt': '',
    },
    'qt49h3n1': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'wenonfuy': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    '292k630x': {
      'es': 'Gestión de personal',
      'en': '',
      'pt': '',
    },
    'l5fis8cv': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioClientes
  {
    '7728dhvf': {
      'es': 'Agregar clientes',
      'en': '',
      'pt': '',
    },
    'ki4xrs3h': {
      'es': 'Agregar cliente',
      'en': '',
      'pt': '',
    },
    'o11fo60t': {
      'es': 'Nombre del cliente...',
      'en': '',
      'pt': '',
    },
    '2j1rweod': {
      'es': 'Apellidos del cliente...',
      'en': '',
      'pt': '',
    },
    'a6wk53ee': {
      'es': 'Cédula del cliente...',
      'en': '',
      'pt': '',
    },
    '0kagbkaj': {
      'es': 'Número telefónico...',
      'en': '',
      'pt': '',
    },
    'bsesz9yx': {
      'es': 'Correo electrónico del cliente...',
      'en': '',
      'pt': '',
    },
    'bnvofqiy': {
      'es': 'Tipo de membresía...',
      'en': '',
      'pt': '',
    },
    'v0mmpbas': {
      'es': 'Fecha de pago:',
      'en': '',
      'pt': '',
    },
    'yn0rdqq0': {
      'es': 'Fecha',
      'en': '',
      'pt': '',
    },
    'wyxjuhvj': {
      'es': 'Agregar cliente',
      'en': '',
      'pt': '',
    },
    'qn6levts': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    '2tqt1odm': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    't77i7lg9': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'y0qqvq1f': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'fm0szui9': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'hzr3yfrc': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'rww8o5zm': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    '33g7sqg9': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'cjaavho5': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'f0h4xjsj': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'xis2k4o5': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'g5i3blgv': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '4meksqfe': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'eytix919': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'v2zegdxg': {
      'es': 'Espacio Requerido',
      'en': '',
      'pt': '',
    },
    'bpupgai2': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'jxuudmt0': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'z6bxuz4s': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    'cd0976po': {
      'es': 'Gestión de clientes',
      'en': '',
      'pt': '',
    },
    '89yfkulk': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // inventarioProductos
  {
    'ftdsh83p': {
      'es': 'Agregar producto',
      'en': '',
      'pt': '',
    },
    '4ts76eyg': {
      'es': 'Agregar productos',
      'en': '',
      'pt': '',
    },
    'o1ner9eo': {
      'es': 'Nombre del usuario...',
      'en': '',
      'pt': '',
    },
    '4v6v89e7': {
      'es': 'Descripción de producto...',
      'en': '',
      'pt': '',
    },
    'hfa7scsb': {
      'es': 'Precio producto...',
      'en': '',
      'pt': '',
    },
    'fy4dtlbz': {
      'es': 'Cantidad disponible del producto...',
      'en': '',
      'pt': '',
    },
    'gjszh52k': {
      'es': 'Categoría del producto...',
      'en': '',
      'pt': '',
    },
    '0ainkuwa': {
      'es': 'Option 1',
      'en': '',
      'pt': '',
    },
    'x65tjk5x': {
      'es': 'Please select...',
      'en': '',
      'pt': '',
    },
    '4zifa44i': {
      'es': 'Search for an item...',
      'en': '',
      'pt': '',
    },
    '79or5oq1': {
      'es': 'Agregar producto',
      'en': '',
      'pt': '',
    },
    '9pnfbi6d': {
      'es': 'Editar',
      'en': '',
      'pt': '',
    },
    'rp1sc1ss': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
    '4bssmuxb': {
      'es': 'Gestión de productos',
      'en': '',
      'pt': '',
    },
    'czz6ql96': {
      'es': 'Home',
      'en': '',
      'pt': '',
    },
  },
  // EditarAdmin
  {
    '0ceyi7hq': {
      'es': 'Edición de administrador',
      'en': '',
      'pt': '',
    },
    'c0xszbdl': {
      'es': 'Nuevo nombre del administrador...',
      'en': '',
      'pt': '',
    },
    'ao29vyhk': {
      'es': 'Nuevo apellido del administrador...',
      'en': '',
      'pt': '',
    },
    '18yhvok4': {
      'es': 'Nuevo correo del administrador...',
      'en': '',
      'pt': '',
    },
    'h104hd3q': {
      'es': 'Nueva cédula del administrador...',
      'en': '',
      'pt': '',
    },
    'eoeb877w': {
      'es': 'Nuevo número telefónico del administrador...',
      'en': '',
      'pt': '',
    },
    'g23qj1bb': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    'k89wd8ve': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'vqeadxdf': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    '6rvfop0z': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'zk0qytuu': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'oxcc1xkw': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'acyn198u': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'dt3uv1un': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'jjankk63': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    'a932cu57': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'gczyue4l': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '0wjx5fzb': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'a8sxabia': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'vg1nu0be': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'ge1har7w': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    'xhvx0am8': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EliminarAdmin
  {
    'acpsy9tg': {
      'es': 'Eliminar administrador',
      'en': '',
      'pt': '',
    },
    'zx547fep': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    'joivt95e': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // EditarInstructor
  {
    'dx5i2ynf': {
      'es': 'Edición de instructor',
      'en': '',
      'pt': '',
    },
    'evacxokq': {
      'es': 'Nuevo nombre del instructor...',
      'en': '',
      'pt': '',
    },
    'dohfr87x': {
      'es': 'Nuevo apellido del instructor...',
      'en': '',
      'pt': '',
    },
    'zze0jhw7': {
      'es': 'Nuevo correo del instructor...',
      'en': '',
      'pt': '',
    },
    'suufol4m': {
      'es': 'Nueva cédula del instructor...',
      'en': '',
      'pt': '',
    },
    'rmp9dhzn': {
      'es': 'Nuevo número telefónico del instructor...',
      'en': '',
      'pt': '',
    },
    'h65uf0hn': {
      'es': 'Área de trabajo del instructor...',
      'en': '',
      'pt': '',
    },
    'vpm04c17': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    '0iq5r7f3': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'wbvwjd1t': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'gb2czdaw': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'zs1xixiw': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'xpeytyfs': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'bysdmq08': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'n8dyzqv4': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'lm2r7pt8': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    'f00qctkg': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'gg4di69a': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '69q61qav': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'iveg12ov': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '0gy7dqin': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'zznt67bl': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    '5z3itnlr': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EditarProveedor
  {
    '1k9nym2a': {
      'es': 'Edición de proveedor',
      'en': '',
      'pt': '',
    },
    'l4kjhde9': {
      'es': 'Nuevo nombre del proveedor...',
      'en': '',
      'pt': '',
    },
    'z7gv0ox1': {
      'es': 'Nuevo correo del proveedor...',
      'en': '',
      'pt': '',
    },
    'ijb1zh64': {
      'es': 'Nuevo número telefónico del proveedor...',
      'en': '',
      'pt': '',
    },
    'faiq0qh2': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    'trw7brzz': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'ssg2u5j2': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    '1u065z97': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'xhurmpiy': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'nydbo7i2': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'gs0fg2lq': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'mi982pxj': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '0gpsgscg': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    'ji4he0xf': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    's5v3z2r8': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '1m262ek2': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'wuca9mjv': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'bgfi3kny': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'jrc3v1c8': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    '9e1tyij7': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EliminarProveedor
  {
    '27m9ejs0': {
      'es': 'Eliminar proveedor',
      'en': '',
      'pt': '',
    },
    'yryxow6x': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    'jrw34tg4': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // EliminarInstructor
  {
    '9vqhosoc': {
      'es': 'Eliminar instructor',
      'en': '',
      'pt': '',
    },
    'h9nexp20': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    'er6rtgku': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // EditarEquipo
  {
    'yg46y8m8': {
      'es': 'Edición de equipo',
      'en': '',
      'pt': '',
    },
    'n6cfqmz0': {
      'es': 'Nuevo nombre...',
      'en': '',
      'pt': '',
    },
    '6fcxz2ht': {
      'es': 'Nueva categoría...',
      'en': '',
      'pt': '',
    },
    'fdh6vawq': {
      'es': 'Nuevo cantidad...',
      'en': '',
      'pt': '',
    },
    'i3fr76d4': {
      'es': 'Estado actual...',
      'en': '',
      'pt': '',
    },
    'oxszvlx8': {
      'es': 'Último mantenimiento...',
      'en': '',
      'pt': '',
    },
    'r7mgvmbw': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    'l2r0aygp': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'hul7f72y': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    '1197w5xz': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '16fdhrar': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'lp4s4j5w': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'rz00eh1v': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '4rhulxc6': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'c2pcs0u7': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    'qwi8oyo4': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'zz5gy87j': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'w519y6gb': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'yulfckgo': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'a0ys22cx': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '0jcvpese': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    'xru6ug13': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EliminarEquipo
  {
    'baclz95a': {
      'es': 'Eliminar proveedor',
      'en': '',
      'pt': '',
    },
    '43q9mlvf': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    'c2hg9wze': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // EliminarClase
  {
    '674u5bxu': {
      'es': 'Eliminar clase',
      'en': '',
      'pt': '',
    },
    'bp79l5vd': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    '11tyqlbs': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // EditarClase
  {
    'kfudjm68': {
      'es': 'Edición de clase',
      'en': '',
      'pt': '',
    },
    'krar50r1': {
      'es': 'Nuevo nombre de la clase...',
      'en': '',
      'pt': '',
    },
    'eexr04of': {
      'es': 'Nuev descripción de la clase ..',
      'en': '',
      'pt': '',
    },
    'uhnib69o': {
      'es': 'Nuevo intructor que imparte la clase...',
      'en': '',
      'pt': '',
    },
    'h1met1v2': {
      'es': 'Nuevo cantidad máxima de clientes..',
      'en': '',
      'pt': '',
    },
    'xr8ba8ls': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    '5qvtn65i': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'wei9taw7': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'f4pwilo4': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'qdwwxmvj': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'o1hf7yf0': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'lkalivou': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'v4j15i92': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'eg1m0iyl': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    '3xvimd1j': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'cprqv366': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '35lkuve0': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'c0ra7apy': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'gnh2mt94': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'kfg5jans': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    '6px9ge8c': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EliminarClientes
  {
    'r4xif4le': {
      'es': 'Eliminar cliente',
      'en': '',
      'pt': '',
    },
    'x278yzqw': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    'veq83uap': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // EditarCliente
  {
    '261201kd': {
      'es': 'Edición de cliente',
      'en': '',
      'pt': '',
    },
    'vxhsfere': {
      'es': 'Nuevo nombre del administrador...',
      'en': '',
      'pt': '',
    },
    '04vwq9ci': {
      'es': 'Nuevo apellido del administrador...',
      'en': '',
      'pt': '',
    },
    '974p6eg1': {
      'es': 'Nueva cédula del cliente...',
      'en': '',
      'pt': '',
    },
    'uossb4uf': {
      'es': 'Nuevo número telefónico del cliente...',
      'en': '',
      'pt': '',
    },
    '5bf6fmyn': {
      'es': 'Nuevo correo electrónico del cliente...',
      'en': '',
      'pt': '',
    },
    'x9tv0owg': {
      'es': 'Tipo de membresía...',
      'en': '',
      'pt': '',
    },
    'tdiyedew': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    'lhi54cwi': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'kvfow3pa': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    '6t76y3ee': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'v33ey79v': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'jztx5qvg': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'isqbw9gf': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'tqbdbgvf': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'r42blzy8': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    'gwkoa4e0': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'f7s7wmo5': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '970jtgh1': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'ie7thwoe': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    '7nrtpo04': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'vqxenqh8': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    '91qdih7m': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EditarProducto
  {
    'thk45bo2': {
      'es': 'Edición de producto',
      'en': '',
      'pt': '',
    },
    'jsfx4dq8': {
      'es': 'Nuevo nombre del producto...',
      'en': '',
      'pt': '',
    },
    '5p8wzttn': {
      'es': 'Nueva descripción...',
      'en': '',
      'pt': '',
    },
    'gkus6shx': {
      'es': 'Nuevo precio del producto...',
      'en': '',
      'pt': '',
    },
    'pvk7oivo': {
      'es': 'Nueva cantidad...',
      'en': '',
      'pt': '',
    },
    'fcymbpsv': {
      'es': 'Nueva categoría...',
      'en': '',
      'pt': '',
    },
    '4alndu2y': {
      'es': 'Nuevo proveedor...',
      'en': '',
      'pt': '',
    },
    'mej9n3n9': {
      'es': 'Agregar cambios',
      'en': '',
      'pt': '',
    },
    '2ohxna8d': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'm9sdy4o4': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'ghjqvt8n': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'na93967y': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'nhkuoycj': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': '',
      'pt': '',
    },
    'xg8sy0en': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'zy9mlhby': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'zz398vtq': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': '',
      'pt': '',
    },
    'bpdmf6u5': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'qz858ycs': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    '8jw8hx5s': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': '',
      'pt': '',
    },
    'o2rsjknv': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
    'pltyaf3p': {
      'es': 'Field is required',
      'en': '',
      'pt': '',
    },
    'zw0929pk': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': '',
      'pt': '',
    },
    'km9k95xg': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
      'pt': '',
    },
  },
  // EliminarProducto
  {
    'ag0gzqog': {
      'es': 'Eliminar administrador',
      'en': '',
      'pt': '',
    },
    '7z5kx27i': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': '',
      'pt': '',
    },
    'zylezagi': {
      'es': 'Eliminar',
      'en': '',
      'pt': '',
    },
  },
  // Miscellaneous
  {
    '67ro036t': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '1l0nbp0g': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'y1z24wgp': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'cdo4vqqj': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ql8b7xdi': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'rjqg4wk5': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'efx16iim': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'cgbik8uc': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'o8ceepdq': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'jhqn937o': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ezpoq9qp': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '5abvpf1q': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ctyhjizv': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ixacoxqr': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '0j306gvw': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '85mwbju3': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'o7izghcp': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'shi7dfcg': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'tnx4csw4': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'w71g38zu': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '451q5lxh': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ldrmmxu0': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'cxnw43sn': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'venfvnbf': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'uz410m4a': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'uchdh7t9': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'bdpbhr5i': {
      'es': '',
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
