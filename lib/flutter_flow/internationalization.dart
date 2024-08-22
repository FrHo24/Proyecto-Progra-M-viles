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
      'en': 'Register',
      'pt': 'Cadastre-se',
    },
    'bzqcdz7e': {
      'es': 'Google',
      'en': 'Google',
      'pt': 'Google',
    },
    'zwb175y6': {
      'es': 'Facebook',
      'en': 'Facebook',
      'pt': 'Facebook',
    },
    'z49z5u4s': {
      'es': 'Registrar Cuenta',
      'en': 'Register Account',
      'pt': 'Registrar conta',
    },
    '4kt5x930': {
      'es': 'ingresar siguiente información:',
      'en': 'enter the following information:',
      'pt': 'Insira as seguintes informações:',
    },
    '12ljm8sq': {
      'es': 'Email:',
      'en': 'E-mail:',
      'pt': 'E-mail:',
    },
    'ohxf6i6i': {
      'es': 'Contraseña:',
      'en': 'Password:',
      'pt': 'Senha:',
    },
    'tatcadvs': {
      'es': 'Confirmar contraseña',
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    'gutbu4io': {
      'es': 'Registrarse',
      'en': 'Register',
      'pt': 'Cadastre-se',
    },
    '9nk8o2vq': {
      'es': 'Ingresar',
      'en': 'Get into',
      'pt': 'Entre',
    },
    'rhgeqy2d': {
      'es': 'Bienvenido',
      'en': 'Welcome',
      'pt': 'Bem-vindo',
    },
    '7c38jde3': {
      'es': 'Ingrese con la infromacion de su cuenta ',
      'en': 'Login with your account information',
      'pt': 'Faça login com as informações da sua conta',
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
      'pt': 'Entre',
    },
    'a6rfs89i': {
      'es': '¿Olvido la Contraseña?',
      'en': 'Forgot Password?',
      'pt': 'Esqueceu sua senha?',
    },
    'etsnhaik': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PaginadeIngreso
  {
    'gmva1t6k': {
      'es': 'Fenix Box',
      'en': 'Fenix Box',
      'pt': 'Caixa Fênix',
    },
    'x9jnewqj': {
      'es': 'Inicia',
      'en': 'Start',
      'pt': 'Começar',
    },
    's5zafsvo': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
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
      'en': 'Recover Password',
      'pt': 'Recuperar senha',
    },
    'ogni243j': {
      'es':
          'Le enviaremos un correo electrónico a su dirección electrónica registrada con un enlace que le permitirá recuperar su contraseña, por favor ingrese el correo electrónico utilizado en la previa creación de cuenta.',
      'en':
          'We will send an email to your registered email address with a link that will allow you to recover your password, please enter the email used when you previously created your account.',
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
      'en': 'Recover Password',
      'pt': 'Recuperar senha',
    },
    'qtmgvw5w': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
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
      'en': 'Change Password',
      'pt': 'Alterar a senha',
    },
    's0qw91kk': {
      'es': 'Recuperar Contraseña',
      'en': 'Recover Password',
      'pt': 'Recuperar senha',
    },
    '63cr1d4c': {
      'es': 'General',
      'en': 'General',
      'pt': 'Em geral',
    },
    'cfja0v7e': {
      'es': 'Lenguaje',
      'en': 'Language',
      'pt': 'Linguagem',
    },
    'jkf74pdz': {
      'es': 'Ajustes',
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'onplbhv3': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
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
      'en': 'Change Password',
      'pt': 'Alterar a senha',
    },
    'ithzad5c': {
      'es':
          'Le enviaremos un correo a su dirección de correo registradacion su cuneta con un enlace que le permitirá cambiar su contraseña, por favor ingrese el correo de su cuenta.',
      'en':
          'We will send an email to your registered email address with a link that will allow you to change your password, please enter the email address of your account.',
      'pt':
          'Iremos enviar-lhe um email para o seu endereço de email registado na sua conta com um link que lhe permitirá alterar a sua palavra-passe, por favor insira o email da sua conta.',
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
      'en': 'Change Password',
      'pt': 'Alterar a senha',
    },
    't5htbhzd': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Perfil
  {
    'n6hkwk67': {
      'es': 'Información Personal',
      'en': 'Personal Information',
      'pt': 'Informações pessoais',
    },
    'eesnuyas': {
      'es': 'Perfil',
      'en': 'Profile',
      'pt': 'Perfil',
    },
    'l16444up': {
      'es': 'Ajustes',
      'en': 'Settings',
      'pt': 'Configurações',
    },
    '8w4f28z3': {
      'es': 'Salir',
      'en': 'Go out',
      'pt': 'Sair',
    },
    'oivitafn': {
      'es': 'Perfil',
      'en': 'Profile',
      'pt': 'Perfil',
    },
    '0sjtcxm5': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // verReservas
  {
    'm2lk5wb0': {
      'es': 'Calendario para ver las reservas',
      'en': 'Calendar to view reservations',
      'pt': 'Calendário para visualizar reservas',
    },
    'iga8u7i7': {
      'es': 'Reservar',
      'en': 'Reserve',
      'pt': 'Reserva',
    },
    'fck008wi': {
      'es': 'Instructor:',
      'en': 'Instructor:',
      'pt': 'Instrutor:',
    },
    '02b1trwd': {
      'es': 'BD',
      'en': 'BD',
      'pt': 'B. D.',
    },
    'uns6m5cb': {
      'es': 'Clase:',
      'en': 'Class:',
      'pt': 'Aula:',
    },
    'lxa3v2p4': {
      'es': 'BD',
      'en': 'BD',
      'pt': 'B. D.',
    },
    '7aiiop1m': {
      'es': 'Clientes:',
      'en': 'Customers:',
      'pt': 'Clientes:',
    },
    'doz3h5ma': {
      'es': 'BD',
      'en': 'BD',
      'pt': 'B. D.',
    },
    'wnwm9kux': {
      'es': 'Hora:',
      'en': 'Hour:',
      'pt': 'Hora:',
    },
    'h95nrd8v': {
      'es': 'BD',
      'en': 'BD',
      'pt': 'B. D.',
    },
    '9y8j5sf5': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'oeywn4uz': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    'afdeghbf': {
      'es': 'Reservas',
      'en': 'Reservations',
      'pt': 'Reservas',
    },
    '28653bt6': {
      'es': 'Cerrar Sesión',
      'en': 'Close Session',
      'pt': 'Sair',
    },
    'gq7msw2y': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // prueba
  {
    '5y9z8d1h': {
      'es': 'Clase : ',
      'en': 'Class :',
      'pt': 'Aula :',
    },
    'fwxlh12s': {
      'es': 'Clase',
      'en': 'Class',
      'pt': 'Aula',
    },
    'jwmptqc5': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'eb6hpc1j': {
      'es': 'Seleccione una Clase',
      'en': 'Select a Class',
      'pt': 'Selecione uma aula',
    },
    'ukbd5v0n': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'e0xbur0n': {
      'es': 'Instructor : ',
      'en': 'Instructor:',
      'pt': 'Instrutor:',
    },
    '116qcb2w': {
      'es': 'Intructor',
      'en': 'Instructor',
      'pt': 'Instrutor',
    },
    '3o7xhg57': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'og6a5fkr': {
      'es': 'Seleccione un Instructor',
      'en': 'Select an Instructor',
      'pt': 'Selecione um instrutor',
    },
    't7i0k45d': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'nldbiq79': {
      'es': 'Cantidad \nparticipantes: ',
      'en': 'Number of \nparticipants:',
      'pt': 'Quantia \nparticipantes:',
    },
    '3r9zpn1o': {
      'es': 'Clase',
      'en': 'Class',
      'pt': 'Aula',
    },
    'w7qrk0ll': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '1gmkhjue': {
      'es': 'Seleccione una Clase',
      'en': 'Select a Class',
      'pt': 'Selecione uma aula',
    },
    '2lz054ht': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'tqzhzqbh': {
      'es': 'Agregar',
      'en': 'Add',
      'pt': 'Adicionar',
    },
    'kfi1l967': {
      'es': 'Page Title',
      'en': 'Page Title',
      'pt': 'Título da página',
    },
    'k00zury0': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // inventarioInstructores
  {
    'on36keim': {
      'es': 'Agregar instructor',
      'en': 'Add instructor',
      'pt': 'Adicionar instrutor',
    },
    'zqo3glrb': {
      'es': 'Agregar instructores',
      'en': 'Add instructors',
      'pt': 'Adicionar instrutores',
    },
    'vv90e9ye': {
      'es': 'Nombre del instructor...',
      'en': 'Instructor name...',
      'pt': 'Nome do instrutor...',
    },
    '84jpw1lz': {
      'es': 'Apellidos del instructor...',
      'en': 'Instructor\'s last name...',
      'pt': 'Sobrenome do instrutor...',
    },
    'msglkonl': {
      'es': 'Correo electrónico del instructor...',
      'en': 'Instructor Email...',
      'pt': 'E-mail do instrutor...',
    },
    'or9bwh5y': {
      'es': 'Cédula del instructor...',
      'en': 'Instructor\'s ID...',
      'pt': 'ID do instrutor...',
    },
    'f3wve1w2': {
      'es': 'Número de teléfono...',
      'en': 'Phone number...',
      'pt': 'Número de telefone...',
    },
    '485menbk': {
      'es': 'Área de trabajo..',
      'en': 'Work area..',
      'pt': 'Área de trabalho..',
    },
    'm4nzbith': {
      'es': 'Agregar instructor',
      'en': 'Add instructor',
      'pt': 'Adicionar instrutor',
    },
    '8uyynapd': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '6jr9vkf7': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '646xqjc8': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '54h1gjbp': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'qsyaxl48': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'cg5sc6k0': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'amhnjtmi': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'gmz4zo0e': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'krdkn4i6': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '4a31zqx4': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'mt3hd3zk': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'lxq3ujjn': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'hjdriv3q': {
      'es': 'Correo electrónico:',
      'en': 'Email:',
      'pt': 'E-mail:',
    },
    '521vggwh': {
      'es': 'Número de cédula:',
      'en': 'ID number:',
      'pt': 'Número de identificação:',
    },
    'zxvneigo': {
      'es': 'Número de teléfono:',
      'en': 'Phone number:',
      'pt': 'Número de telefone:',
    },
    '5lhopjby': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'pqzohcoc': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    'l05hp3wj': {
      'es': 'Gestión de instructores',
      'en': 'Instructor Management',
      'pt': 'Gerenciamento de instrutor',
    },
    'ox0ck7y3': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // inventarioAdministradores
  {
    'gd2ssax2': {
      'es': 'Agregar administrador',
      'en': 'Add admin',
      'pt': 'Adicionar administrador',
    },
    'nozihaes': {
      'es': 'Agregar administradores',
      'en': 'Add administrators',
      'pt': 'Adicionar administradores',
    },
    'cwjmm182': {
      'es': 'Nombre del usuario...',
      'en': 'Username...',
      'pt': 'Nome de usuário...',
    },
    'mivn05r2': {
      'es': 'Apellidos del usuario...',
      'en': 'User\'s last name...',
      'pt': 'Sobrenome do usuário...',
    },
    '2848bfu8': {
      'es': 'Correo electrónico del usuario...',
      'en': 'User email...',
      'pt': 'E-mail do usuário...',
    },
    'wa7wgc7p': {
      'es': 'Cédula del usuario...',
      'en': 'User ID...',
      'pt': 'ID do usuário...',
    },
    'jlbgtiiv': {
      'es': 'Número de teléfono...',
      'en': 'Phone number...',
      'pt': 'Número de telefone...',
    },
    '0al7c5wn': {
      'es': 'Agregar usuario',
      'en': 'Add user',
      'pt': 'Adicionar usuário',
    },
    'cydvqhpm': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'qhh85fgo': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '7cz5orjb': {
      'es': 'Espacio Requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    't4nxc7ml': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '108tcc6s': {
      'es': 'Espacio Requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'plqu7ds9': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'kdw31x2g': {
      'es': 'Espacio Requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'fkcr6cir': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '8q9rvpjg': {
      'es': 'Espacio Requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'zkfuf7e4': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'ievl70p4': {
      'es': 'Correo eléctronico:',
      'en': '',
      'pt': '',
    },
    'c4hdz267': {
      'es': 'Número de cédula:',
      'en': '',
      'pt': '',
    },
    'ond21731': {
      'es': 'Número de teléfono: ',
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
      'en': 'Add supplier',
      'pt': 'Adicionar fornecedor',
    },
    'l4vj2v9g': {
      'es': 'Agregar proveedores',
      'en': 'Add suppliers',
      'pt': 'Adicionar fornecedores',
    },
    'tnphjo5w': {
      'es': 'Nombre del proveedor...',
      'en': 'Supplier name...',
      'pt': 'Nome do fornecedor...',
    },
    'wf1z01ns': {
      'es': 'Correo electrónico del proveedor...',
      'en': 'Supplier email...',
      'pt': 'E-mail do fornecedor...',
    },
    '15qmyt4z': {
      'es': 'Número de teléfono...',
      'en': 'Phone number...',
      'pt': 'Número de telefone...',
    },
    '199sg2ks': {
      'es': 'Agregar proveedor',
      'en': 'Add supplier',
      'pt': 'Adicionar fornecedor',
    },
    '9fiq10sf': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'r9uf9h7r': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'z7add1i5': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'w9yw8i7n': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    's5i1cz0b': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '3bsr5drx': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '9zipn6v3': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '902cc0kv': {
      'es': 'Email:',
      'en': 'E-mail:',
      'pt': 'E-mail:',
    },
    'xz28ljm0': {
      'es': 'Teléfono:',
      'en': 'Phone:',
      'pt': 'Telefone:',
    },
    '1s4tqq7l': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'w19tgef3': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    'djspd0id': {
      'es': 'Gestión de proveedores',
      'en': 'Supplier management',
      'pt': 'Gestão de fornecedores',
    },
    'xikqjm3m': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // inventarioEquipo
  {
    'vpht83nn': {
      'es': 'Agregar equipo',
      'en': 'Add equipment',
      'pt': 'Adicionar equipe',
    },
    '5ersy75d': {
      'es': 'Agregar equipo',
      'en': 'Add equipment',
      'pt': 'Adicionar equipe',
    },
    'f99y54f9': {
      'es': 'Nombre del equipo o máquina...',
      'en': 'Name of the team or machine...',
      'pt': 'Nome do equipamento ou máquina...',
    },
    '2j4qzbor': {
      'es': 'Categoría del equipo...',
      'en': 'Team Category...',
      'pt': 'Categoria da equipe...',
    },
    'ngmv4kne': {
      'es': 'Cantidad disponible...',
      'en': 'Quantity available...',
      'pt': 'Quantidade disponível...',
    },
    'kqf5lz24': {
      'es': 'Estado actual...',
      'en': 'Current status...',
      'pt': 'Situação atual...',
    },
    'hguixecs': {
      'es': 'Fecha de último mantenimiento:',
      'en': 'Last maintenance date:',
      'pt': 'Data da última manutenção:',
    },
    '6cr651ky': {
      'es': 'Fecha',
      'en': 'Date',
      'pt': 'Data',
    },
    '7tg0sxzb': {
      'es': 'Agregar equipo',
      'en': 'Add equipment',
      'pt': 'Adicionar equipe',
    },
    't5v1risq': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '2abx7x68': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'rzpwss90': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '04vrqp6a': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '1b6iwvh4': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'z4bxgt7h': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'e1ttbxwy': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'hhv8fb9a': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'zsf9mq9o': {
      'es': 'Estado:',
      'en': 'State:',
      'pt': 'Estado:',
    },
    '3cs4yeoi': {
      'es': 'Cantidad:',
      'en': 'Amount:',
      'pt': 'Quantia:',
    },
    'ikpz3dse': {
      'es': 'Ultimo manteniento:',
      'en': 'Last maintenance:',
      'pt': 'Última manutenção:',
    },
    'fg1i0jkd': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'lj7si7hi': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    'zqivtssf': {
      'es': 'Gestión de equipo',
      'en': 'Team management',
      'pt': 'Gestão de equipe',
    },
    '7h2k8scc': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // inventarioClases
  {
    '2006utf0': {
      'es': 'Agregar clase',
      'en': 'Add class',
      'pt': 'Adicionar turma',
    },
    'k88fpwuo': {
      'es': 'Agregar Clase',
      'en': 'Add Class',
      'pt': 'Adicionar turma',
    },
    'xxwdc303': {
      'es': 'Nombre de la clase...',
      'en': 'Class name...',
      'pt': 'Nome da classe...',
    },
    '74samfy2': {
      'es': 'Descripcion de la clase...',
      'en': 'Class Description...',
      'pt': 'Descrição da aula...',
    },
    'j1eu7zch': {
      'es': 'Cantidad de clientes maxima...',
      'en': 'Maximum number of customers...',
      'pt': 'Número máximo de clientes...',
    },
    '633h5z9v': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'jiauq70t': {
      'es': 'Intructor:',
      'en': 'Instructor:',
      'pt': 'Instrutor:',
    },
    'lj3beo3q': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'frnf00lw': {
      'es': 'Agregar clase',
      'en': 'Add class',
      'pt': 'Adicionar turma',
    },
    'aould9ji': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'hpapbe79': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'nesus78z': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'hitizgh5': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'npdbmhxr': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'rb5sm4y1': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'qt49h3n1': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'wenonfuy': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    '292k630x': {
      'es': 'Gestión de clases',
      'en': 'Class management',
      'pt': 'Gerenciamento de classe',
    },
    'l5fis8cv': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // inventarioClientes
  {
    '7728dhvf': {
      'es': 'Agregar clientes',
      'en': 'Add clients',
      'pt': 'Adicionar clientes',
    },
    'ki4xrs3h': {
      'es': 'Agregar cliente',
      'en': 'Add client',
      'pt': 'Adicionar cliente',
    },
    'o11fo60t': {
      'es': 'Nombre del cliente...',
      'en': 'Customer name...',
      'pt': 'Nome do cliente...',
    },
    '2j1rweod': {
      'es': 'Apellidos del cliente...',
      'en': 'Client\'s last name...',
      'pt': 'Sobrenome do cliente...',
    },
    'a6wk53ee': {
      'es': 'Cédula del cliente...',
      'en': 'Customer ID...',
      'pt': 'ID do cliente...',
    },
    '0kagbkaj': {
      'es': 'Número telefónico...',
      'en': 'Phone number...',
      'pt': 'Número de telefone...',
    },
    'bsesz9yx': {
      'es': 'Correo electrónico del cliente...',
      'en': 'Customer email...',
      'pt': 'E-mail do cliente...',
    },
    'bnvofqiy': {
      'es': 'Tipo de membresía...',
      'en': 'Membership Type...',
      'pt': 'Tipo de associação...',
    },
    'v0mmpbas': {
      'es': 'Fecha de pago:',
      'en': 'Payment date:',
      'pt': 'Data de pagamento:',
    },
    'yn0rdqq0': {
      'es': 'Fecha',
      'en': 'Date',
      'pt': 'Data',
    },
    'wyxjuhvj': {
      'es': 'Agregar cliente',
      'en': 'Add client',
      'pt': 'Adicionar cliente',
    },
    'qn6levts': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    '2tqt1odm': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    't77i7lg9': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'y0qqvq1f': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'fm0szui9': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'hzr3yfrc': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'rww8o5zm': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    '33g7sqg9': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'cjaavho5': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'f0h4xjsj': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'xis2k4o5': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'g5i3blgv': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '4meksqfe': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'eytix919': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'v2zegdxg': {
      'es': 'Espacio Requerido',
      'en': 'Space Required',
      'pt': 'Espaço necessário',
    },
    'bpupgai2': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'yno2x0ww': {
      'es': 'Teléfono:',
      'en': 'Phone:',
      'pt': 'Telefone:',
    },
    '018xnzon': {
      'es': 'Cédula:',
      'en': 'ID:',
      'pt': 'EU IA:',
    },
    'r0bmamnf': {
      'es': 'Membresía:',
      'en': 'Membership:',
      'pt': 'Associação:',
    },
    '5zdk0omm': {
      'es': 'Pagado:',
      'en': 'Paid:',
      'pt': 'Pago:',
    },
    'jxuudmt0': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'z6bxuz4s': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    'cd0976po': {
      'es': 'Gestión de clientes',
      'en': 'Customer Management',
      'pt': 'Gestão de clientes',
    },
    '89yfkulk': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // inventarioProductos
  {
    'ftdsh83p': {
      'es': 'Agregar producto',
      'en': 'Add product',
      'pt': 'Adicionar produto',
    },
    '4ts76eyg': {
      'es': 'Agregar productos',
      'en': 'Add products',
      'pt': 'Adicionar produtos',
    },
    'o1ner9eo': {
      'es': 'Nombre del producto...',
      'en': 'Product name...',
      'pt': 'Nome do produto...',
    },
    '4v6v89e7': {
      'es': 'Descripción de producto...',
      'en': 'Product Description...',
      'pt': 'Descrição do produto...',
    },
    'hfa7scsb': {
      'es': 'Precio producto...',
      'en': 'Product price...',
      'pt': 'Preço do produto...',
    },
    'fy4dtlbz': {
      'es': 'Cantidad disponible del producto...',
      'en': 'Available quantity of the product...',
      'pt': 'Quantidade disponível do produto...',
    },
    'gjszh52k': {
      'es': 'Categoría del producto...',
      'en': 'Product Category...',
      'pt': 'Categoria do produto...',
    },
    '0ainkuwa': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'x65tjk5x': {
      'es': 'Sleccione un Producto',
      'en': 'Select a Product',
      'pt': 'Selecione um produto',
    },
    '4zifa44i': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    '79or5oq1': {
      'es': 'Agregar producto',
      'en': 'Add product',
      'pt': 'Adicionar produto',
    },
    'nuo7pm66': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'vnvzu5hc': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'edinrifp': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '5b9ao2bn': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'ar9q36sb': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'rlq9ypzl': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'b0ij7umx': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'c6ro2b3w': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'u9ms5g82': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'z7vir322': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '3vcd0ab4': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
    },
    'f4yhga27': {
      'es': 'Cantidad:',
      'en': 'Amount:',
      'pt': 'Quantia:',
    },
    '9pnfbi6d': {
      'es': 'Editar',
      'en': 'Edit',
      'pt': 'Editar',
    },
    'rp1sc1ss': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
    '4bssmuxb': {
      'es': 'Gestión de productos',
      'en': 'Product management',
      'pt': 'Gestão de produtos',
    },
    'czz6ql96': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // agregarReserva
  {
    '1wkbg726': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'o3kn8bla': {
      'es': 'Seleccione la clase',
      'en': 'Select class',
      'pt': 'Selecione a turma',
    },
    '7e52r0ts': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'jpm9cmxq': {
      'es': 'Fecha y Hora',
      'en': 'Date and Time',
      'pt': 'Data e hora',
    },
    'ba9wajd0': {
      'es': 'Fecha',
      'en': 'Date',
      'pt': 'Data',
    },
    'tkp803e5': {
      'es': 'Reservar',
      'en': 'Reserve',
      'pt': 'Reserva',
    },
    'm6lrzpx8': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '4wwye5ku': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '1i7bidr6': {
      'es': 'Día de reserva:',
      'en': 'Reservation day:',
      'pt': 'Dia da reserva:',
    },
    'hm28gevp': {
      'es': 'Cancelar Reserva',
      'en': 'Cancel Reservation',
      'pt': 'Cancelar reserva',
    },
    '3sje1nsj': {
      'es': 'Reservas',
      'en': 'Reservations',
      'pt': 'Reservas',
    },
    'nfdnsioo': {
      'es': 'Inventarios',
      'en': 'Inventories',
      'pt': 'Inventários',
    },
    'orfbu45d': {
      'es': 'Administradores',
      'en': 'Administrators',
      'pt': 'Administradores',
    },
    'wstn2vyj': {
      'es': 'Clases',
      'en': 'Classes',
      'pt': 'Aulas',
    },
    'rhmtnr1m': {
      'es': 'Clientes',
      'en': 'Customers',
      'pt': 'Clientes',
    },
    'io57kf4b': {
      'es': 'Equipo',
      'en': 'Equipment',
      'pt': 'Equipamento',
    },
    'vyy7yjun': {
      'es': 'Instructores',
      'en': 'Instructors',
      'pt': 'Instrutores',
    },
    'ch8eohvs': {
      'es': 'productos',
      'en': 'products',
      'pt': 'produtos',
    },
    'xljmkzt5': {
      'es': 'Proveedores',
      'en': 'Suppliers',
      'pt': 'Fornecedores',
    },
    'sl0r1ryc': {
      'es': 'Asistencia',
      'en': 'Attendance',
      'pt': 'Presença',
    },
    'n77hous7': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Asistencia
  {
    'dx0uvjdp': {
      'es': 'guardar',
      'en': 'keep',
      'pt': 'manter',
    },
    'qwv37uvf': {
      'es': 'Page Title',
      'en': 'Page Title',
      'pt': 'Título da página',
    },
    'uom1yrts': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // agregarReservaCopy
  {
    'v15e8hqj': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'fswyqeol': {
      'es': 'Seleccione la clase',
      'en': 'Select class',
      'pt': 'Selecione a turma',
    },
    'u89mpvlz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'gt377lnv': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'ubb5us0h': {
      'es': 'Seleccione Instructor',
      'en': 'Select Instructor',
      'pt': 'Selecione o instrutor',
    },
    'cudlgn57': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'ecp8q6xl': {
      'es': 'Fecha y Hora',
      'en': 'Date and Time',
      'pt': 'Data e hora',
    },
    '5gensj9v': {
      'es': 'Fecha',
      'en': 'Date',
      'pt': 'Data',
    },
    'syndivbx': {
      'es': 'Reservar',
      'en': 'Reserve',
      'pt': 'Reserva',
    },
    'evl08v10': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'p7tae94j': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ba9yqkwf': {
      'es': 'Día de reserva:',
      'en': 'Reservation day:',
      'pt': 'Dia da reserva:',
    },
    'g9qk7k22': {
      'es': 'Cancelar Reserva',
      'en': 'Cancel Reservation',
      'pt': 'Cancelar reserva',
    },
    '9iqzt7sr': {
      'es': 'Reservas',
      'en': 'Reservations',
      'pt': 'Reservas',
    },
    'ry0bhksx': {
      'es': 'Inventarios',
      'en': 'Inventories',
      'pt': 'Inventários',
    },
    'wqh36qi2': {
      'es': 'Administradores',
      'en': 'Administrators',
      'pt': 'Administradores',
    },
    'apewm0ja': {
      'es': 'Clases',
      'en': 'Classes',
      'pt': 'Aulas',
    },
    'tr7vzb96': {
      'es': 'Clientes',
      'en': 'Customers',
      'pt': 'Clientes',
    },
    'h3zg3i5g': {
      'es': 'Equipo',
      'en': 'Equipment',
      'pt': 'Equipamento',
    },
    '9qp0ni7z': {
      'es': 'Instructores',
      'en': 'Instructors',
      'pt': 'Instrutores',
    },
    '7q02nd1b': {
      'es': 'productos',
      'en': 'products',
      'pt': 'produtos',
    },
    'vqjftubl': {
      'es': 'Proveedores',
      'en': 'Suppliers',
      'pt': 'Fornecedores',
    },
    'vebtsdso': {
      'es': 'Asistencia',
      'en': 'Attendance',
      'pt': 'Presença',
    },
    '3amrm0x8': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // EditarAdmin
  {
    '0ceyi7hq': {
      'es': 'Edición de administrador',
      'en': 'Admin Edition',
      'pt': 'Edição de administrador',
    },
    'c0xszbdl': {
      'es': 'Nuevo nombre del administrador...',
      'en': 'New admin name...',
      'pt': 'Novo nome de administrador...',
    },
    'ao29vyhk': {
      'es': 'Nuevo apellido del administrador...',
      'en': 'New administrator surname...',
      'pt': 'Novo sobrenome do administrador...',
    },
    '18yhvok4': {
      'es': 'Nuevo correo del administrador...',
      'en': 'New email from the administrator...',
      'pt': 'Novo e-mail do administrador...',
    },
    'h104hd3q': {
      'es': 'Nueva cédula del administrador...',
      'en': 'New administrator\'s ID...',
      'pt': 'Novo ID de administrador...',
    },
    'eoeb877w': {
      'es': 'Nuevo número telefónico del administrador...',
      'en': 'New administrator phone number...',
      'pt': 'Novo número de telefone do administrador...',
    },
    'g23qj1bb': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    'k89wd8ve': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'vqeadxdf': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    '6rvfop0z': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'zk0qytuu': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'oxcc1xkw': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': 'You must enter the duration of the training to edit',
      'pt': 'Você deve inserir a duração do treinamento para editar',
    },
    'acyn198u': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'dt3uv1un': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'jjankk63': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': 'You must enter the category of the training to be trained',
      'pt': 'Você deve entrar na categoria do treinamento para treinar',
    },
    'a932cu57': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'gczyue4l': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '0wjx5fzb': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': 'You must enter the focus areas',
      'pt': 'Você deve inserir áreas de foco',
    },
    'a8sxabia': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'vg1nu0be': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'ge1har7w': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': 'You must enter the description of the training',
      'pt': 'Você deve inserir a descrição do treinamento',
    },
    'xhvx0am8': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EliminarAdmin
  {
    'acpsy9tg': {
      'es': 'Eliminar administrador',
      'en': 'Remove admin',
      'pt': 'Excluir administrador',
    },
    'zx547fep': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    'joivt95e': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EditarInstructor
  {
    'dx5i2ynf': {
      'es': 'Edición de instructor',
      'en': 'Instructor Edition',
      'pt': 'Edição do Instrutor',
    },
    'evacxokq': {
      'es': 'Nuevo nombre del instructor...',
      'en': 'New name of the instructor...',
      'pt': 'Novo nome do instrutor...',
    },
    'dohfr87x': {
      'es': 'Nuevo apellido del instructor...',
      'en': 'New surname of the instructor...',
      'pt': 'Sobrenome do novo instrutor...',
    },
    'zze0jhw7': {
      'es': 'Nuevo correo del instructor...',
      'en': 'New email from the instructor...',
      'pt': 'Novo e-mail do instrutor...',
    },
    'suufol4m': {
      'es': 'Nueva cédula del instructor...',
      'en': 'New instructor\'s ID...',
      'pt': 'Novo ID do instrutor...',
    },
    'rmp9dhzn': {
      'es': 'Nuevo número telefónico del instructor...',
      'en': 'New instructor phone number...',
      'pt': 'Novo número de telefone do instrutor...',
    },
    'h65uf0hn': {
      'es': 'Área de trabajo del instructor...',
      'en': 'Instructor\'s work area...',
      'pt': 'Área de trabalho do instrutor...',
    },
    'vpm04c17': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    '0iq5r7f3': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'wbvwjd1t': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    'gb2czdaw': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'zs1xixiw': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'xpeytyfs': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': 'You must enter the duration of the training to edit',
      'pt': 'Você deve inserir a duração do treinamento para editar',
    },
    'bysdmq08': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'n8dyzqv4': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'lm2r7pt8': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': 'You must enter the category of the training to be trained',
      'pt': 'Você deve entrar na categoria do treinamento para treinar',
    },
    'f00qctkg': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'gg4di69a': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '69q61qav': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': 'You must enter the focus areas',
      'pt': 'Você deve inserir áreas de foco',
    },
    'iveg12ov': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '0gy7dqin': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'zznt67bl': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': 'You must enter the description of the training',
      'pt': 'Você deve inserir a descrição do treinamento',
    },
    '5z3itnlr': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'sxrunrvd': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'mbmczstl': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EditarProveedor
  {
    '1k9nym2a': {
      'es': 'Edición de proveedor',
      'en': 'Supplier Edition',
      'pt': 'Edição do fornecedor',
    },
    'l4kjhde9': {
      'es': 'Nuevo nombre del proveedor...',
      'en': 'New name of the supplier...',
      'pt': 'Novo nome do fornecedor...',
    },
    'z7gv0ox1': {
      'es': 'Nuevo correo del proveedor...',
      'en': 'New mail from the supplier...',
      'pt': 'Novo e-mail do fornecedor...',
    },
    'ijb1zh64': {
      'es': 'Nuevo número telefónico del proveedor...',
      'en': 'New phone number for the provider...',
      'pt': 'Novo número de telefone do provedor...',
    },
    'faiq0qh2': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    'trw7brzz': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'ssg2u5j2': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    '1u065z97': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'mi982pxj': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '0gpsgscg': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': 'You must enter the category of the training to be trained',
      'pt': 'Você deve entrar na categoria do treinamento para treinar',
    },
    'ji4he0xf': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'bgfi3kny': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'jrc3v1c8': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': 'You must enter the description of the training',
      'pt': 'Você deve inserir a descrição do treinamento',
    },
    '9e1tyij7': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EliminarProveedor
  {
    '27m9ejs0': {
      'es': 'Eliminar proveedor',
      'en': 'Delete supplier',
      'pt': 'Excluir fornecedor',
    },
    'yryxow6x': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    'jrw34tg4': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EliminarInstructor
  {
    '9vqhosoc': {
      'es': 'Eliminar instructor',
      'en': 'Delete instructor',
      'pt': 'Excluir instrutor',
    },
    'h9nexp20': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    'er6rtgku': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EditarEquipo
  {
    'yg46y8m8': {
      'es': 'Edición de equipo',
      'en': 'Team Edition',
      'pt': 'Edição de equipe',
    },
    'n6cfqmz0': {
      'es': 'Nuevo nombre...',
      'en': 'New name...',
      'pt': 'Novo nome...',
    },
    '6fcxz2ht': {
      'es': 'Nueva categoría...',
      'en': 'New category...',
      'pt': 'Nova categoria...',
    },
    'fdh6vawq': {
      'es': 'Nuevo cantidad...',
      'en': 'New quantity...',
      'pt': 'Nova quantidade...',
    },
    'i3fr76d4': {
      'es': 'Estado actual...',
      'en': 'Current status...',
      'pt': 'Situação atual...',
    },
    'r7mgvmbw': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    'l2r0aygp': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'hul7f72y': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    '1197w5xz': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '4rhulxc6': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'c2pcs0u7': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': 'You must enter the category of the training to be trained',
      'pt': 'Você deve entrar na categoria do treinamento para treinar',
    },
    'qwi8oyo4': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'a0ys22cx': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '0jcvpese': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': 'You must enter the description of the training',
      'pt': 'Você deve inserir a descrição do treinamento',
    },
    'xru6ug13': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '186q9mlk': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'clob7u1u': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EliminarEquipo
  {
    'baclz95a': {
      'es': 'Eliminar proveedor',
      'en': 'Delete supplier',
      'pt': 'Excluir fornecedor',
    },
    '43q9mlvf': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    'c2hg9wze': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EliminarClase
  {
    '674u5bxu': {
      'es': 'Eliminar clase',
      'en': 'Delete class',
      'pt': 'Excluir turma',
    },
    'bp79l5vd': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    '11tyqlbs': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EditarClase
  {
    'kfudjm68': {
      'es': 'Edición de clase',
      'en': 'Class edition',
      'pt': 'Edição de aula',
    },
    'krar50r1': {
      'es': 'Nuevo nombre de la clase...',
      'en': 'New class name...',
      'pt': 'Novo nome de classe...',
    },
    'eexr04of': {
      'es': 'Nueva descripción de la clase ..',
      'en': 'New class description ..',
      'pt': 'Nova descrição da classe..',
    },
    'h1met1v2': {
      'es': 'Nuevo cantidad máxima de clientes..',
      'en': 'New maximum number of clients..',
      'pt': 'Novo número máximo de clientes.',
    },
    '69end16o': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'uhnib69o': {
      'es': 'Nuevo intructor que imparte la clase...',
      'en': 'New instructor teaching the class...',
      'pt': 'Novo instrutor ministrando a aula...',
    },
    '0tkt53tk': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'xr8ba8ls': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    '5qvtn65i': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'wei9taw7': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    'f4pwilo4': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'gnh2mt94': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'kfg5jans': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': 'You must enter the description of the training',
      'pt': 'Você deve inserir a descrição do treinamento',
    },
    '6px9ge8c': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'og7x1uq3': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'xa4p7mz1': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EliminarClientes
  {
    'r4xif4le': {
      'es': 'Eliminar cliente',
      'en': 'Delete client',
      'pt': 'Excluir cliente',
    },
    'x278yzqw': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    'veq83uap': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EditarCliente
  {
    '261201kd': {
      'es': 'Edición de cliente',
      'en': 'Client Edition',
      'pt': 'Edição Cliente',
    },
    'vxhsfere': {
      'es': 'Nuevo nombre del cliente...',
      'en': 'New client name...',
      'pt': 'Novo nome do cliente...',
    },
    '04vwq9ci': {
      'es': 'Nuevo apellido del cliente...',
      'en': 'New customer surname...',
      'pt': 'Sobrenome do novo cliente...',
    },
    '974p6eg1': {
      'es': 'Nueva cédula del cliente...',
      'en': 'New customer ID...',
      'pt': 'Novo ID do cliente...',
    },
    'uossb4uf': {
      'es': 'Nuevo número telefónico del cliente...',
      'en': 'New customer phone number...',
      'pt': 'Novo número de telefone do cliente...',
    },
    '5bf6fmyn': {
      'es': 'Nuevo correo electrónico del cliente...',
      'en': 'New customer email...',
      'pt': 'E-mail do novo cliente...',
    },
    'x9tv0owg': {
      'es': 'Tipo de membresía...',
      'en': 'Membership Type...',
      'pt': 'Tipo de associação...',
    },
    'tdiyedew': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    'lhi54cwi': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'kvfow3pa': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    '6t76y3ee': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'v33ey79v': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'jztx5qvg': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': 'You must enter the duration of the training to edit',
      'pt': 'Você deve inserir a duração do treinamento para editar',
    },
    'isqbw9gf': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'tqbdbgvf': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'r42blzy8': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': 'You must enter the category of the training to be trained',
      'pt': 'Você deve entrar na categoria do treinamento para treinar',
    },
    'gwkoa4e0': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '7nrtpo04': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'vqxenqh8': {
      'es': 'Debe ingresar la descripción del entrenamiento',
      'en': 'You must enter the description of the training',
      'pt': 'Você deve inserir a descrição do treinamento',
    },
    '91qdih7m': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'r5ongns6': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'gzn5d7wg': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'y2m9hdij': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '134wr7vp': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EditarProducto
  {
    'thk45bo2': {
      'es': 'Edición de producto',
      'en': 'Product edition',
      'pt': 'Edição do produto',
    },
    'jsfx4dq8': {
      'es': 'Nuevo nombre del producto...',
      'en': 'New product name...',
      'pt': 'Novo nome do produto...',
    },
    '5p8wzttn': {
      'es': 'Nueva descripción...',
      'en': 'New description...',
      'pt': 'Nova descrição...',
    },
    'gkus6shx': {
      'es': 'Nuevo precio del producto...',
      'en': 'New product price...',
      'pt': 'Preço do produto novo...',
    },
    'pvk7oivo': {
      'es': 'Nueva cantidad...',
      'en': 'New quantity...',
      'pt': 'Nova quantidade...',
    },
    'fcymbpsv': {
      'es': 'Nueva categoría...',
      'en': 'New category...',
      'pt': 'Nova categoria...',
    },
    'mej9n3n9': {
      'es': 'Agregar cambios',
      'en': 'Add changes',
      'pt': 'Adicionar alterações',
    },
    '2ohxna8d': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'm9sdy4o4': {
      'es': 'Debe ingresar el nombre del entrenamiento a editar',
      'en': 'You must enter the name of the training to edit',
      'pt': 'Você deve inserir o nome do treinamento para editar',
    },
    'ghjqvt8n': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'na93967y': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'nhkuoycj': {
      'es': 'Debe ingresar la duración del entrenamiento a editar',
      'en': 'You must enter the duration of the training to edit',
      'pt': 'Você deve inserir a duração do treinamento para editar',
    },
    'xg8sy0en': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'zy9mlhby': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'zz398vtq': {
      'es': 'Debe ingresar la categoría del entrenamiento a entrenar',
      'en': 'You must enter the category of the training to be trained',
      'pt': 'Você deve entrar na categoria do treinamento para treinar',
    },
    'bpdmf6u5': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'qz858ycs': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '8jw8hx5s': {
      'es': 'Debe ingresar las áreas de enfoque',
      'en': 'You must enter the focus areas',
      'pt': 'Você deve inserir áreas de foco',
    },
    'o2rsjknv': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '2dwq1eca': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'xp9b14cm': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // EliminarProducto
  {
    'ag0gzqog': {
      'es': 'Eliminar administrador',
      'en': 'Remove admin',
      'pt': 'Excluir administrador',
    },
    '7z5kx27i': {
      'es': 'Escriba la palabra \"Eliminar\"\n para confirmar',
      'en': 'Type the word \"Delete\"\nto confirm',
      'pt': 'Digite a palavra \"Excluir\"\n confirmar',
    },
    'zylezagi': {
      'es': 'Eliminar',
      'en': 'Eliminate',
      'pt': 'Eliminar',
    },
  },
  // EliminarReserva
  {
    '52vg6c5w': {
      'es': 'Cancelar reserva',
      'en': 'Cancel reservation',
      'pt': 'Cancelar reserva',
    },
    'k5ruamp4': {
      'es': 'Escriba la palabra \"Cancelar\"\n para confirmar',
      'en': 'Type the word \"Cancel\"\nto confirm',
      'pt': 'Digite a palavra \"Cancelar\"\n confirmar',
    },
    'jykyrmir': {
      'es': 'Cancelar',
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // DatosPerfil
  {
    'o5buv8im': {
      'es': 'Perfil de Usuario',
      'en': 'User Profile',
      'pt': 'Perfil de usuário',
    },
    'gw02ze00': {
      'es': 'Por favor ingrese la información solicitada a continuación',
      'en': 'Please enter the requested information below',
      'pt': 'Por favor insira as informações solicitadas abaixo',
    },
    'ac2993pi': {
      'es': 'Agregar foto de perfil',
      'en': 'Add profile picture',
      'pt': 'Adicionar foto de perfil',
    },
    '33e1tohm': {
      'es': 'Ingrese su nombre ',
      'en': 'Enter your name',
      'pt': 'Digite seu nome',
    },
    'dy5s5ax1': {
      'es': 'Ingrese sus apellidos',
      'en': 'Enter your last name',
      'pt': 'Digite seu sobrenome',
    },
    'u39ydjo9': {
      'es': 'Indique cuál es su rol en FénixBox',
      'en': 'Please indicate your role in FénixBox',
      'pt': 'Indique qual é a sua função na FénixBox',
    },
    '6xpw4neo': {
      'es': 'Ingrese su número de cédula',
      'en': 'Enter your ID number',
      'pt': 'Digite seu número de identificação',
    },
    'hl6y8rd6': {
      'es': 'Ingrese su número de teléfono',
      'en': 'Enter your phone number',
      'pt': 'Digite seu número de telefone',
    },
    'xxsg556x': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'lynywk1m': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'fe5ajhew': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    '6fgspjaa': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'qkutiei6': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'u2ik0sn7': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '70fnsgrh': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'ih963o3h': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'ydb5vgi0': {
      'es': 'Espacio requerido',
      'en': 'Space required',
      'pt': 'Espaço necessário',
    },
    'jd7iy92k': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '44eocw8q': {
      'es': 'Actualizar información',
      'en': 'Update information',
      'pt': 'Atualizar informações',
    },
  },
  // Configuracion
  {
    'k34a5i5c': {
      'es': 'Cuenta',
      'en': 'Account',
      'pt': 'Conta',
    },
    'ns08aj25': {
      'es': 'Cambiar Contraseña',
      'en': 'Change Password',
      'pt': 'Alterar a senha',
    },
    's43wbd79': {
      'es': 'Recuperar Contraseña',
      'en': 'Recover Password',
      'pt': 'Recuperar senha',
    },
    'q28azxoh': {
      'es': 'General',
      'en': 'General',
      'pt': 'Em geral',
    },
    'dab827pz': {
      'es': 'Lenguaje',
      'en': 'Language',
      'pt': 'Linguagem',
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
