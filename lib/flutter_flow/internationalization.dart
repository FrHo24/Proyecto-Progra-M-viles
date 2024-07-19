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
  // PaginadeInicio
  {
    'ujwagubg': {
      'es': 'Por definir',
      'en': '',
      'pt': '',
    },
    'imcf7s6v': {
      'es': 'Title',
      'en': '',
      'pt': '',
    },
    '69qmorc9': {
      'es': 'Subtitle goes here...',
      'en': '',
      'pt': '',
    },
    '5eiv2ixa': {
      'es': 'Por definir',
      'en': '',
      'pt': '',
    },
    'y9xfswpo': {
      'es': 'Title',
      'en': '',
      'pt': '',
    },
    '9fkup5tf': {
      'es': 'Subtitle goes here...',
      'en': '',
      'pt': '',
    },
    'vwh545z8': {
      'es': 'Por definir',
      'en': '',
      'pt': '',
    },
    '33epe25m': {
      'es': 'Calendario',
      'en': 'Activity',
      'pt': 'Atividade',
    },
    '5jkeu1sk': {
      'es': 'Cerrar Sesión',
      'en': 'Sign off',
      'pt': 'Fechar Sessão',
    },
    'dqw2gkle': {
      'es': 'Inventario',
      'en': '',
      'pt': '',
    },
    'woa9x31o': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // Login
  {
    'hklxceun': {
      'es': 'Crear Cuenta',
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'z49z5u4s': {
      'es': 'Crear Cuenta',
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    '4kt5x930': {
      'es': 'Llena la siguiente información:',
      'en': 'Fill out the following information',
      'pt': 'Preencha as seguintes informações',
    },
    '12ljm8sq': {
      'es': 'Correo:',
      'en': 'Mail:',
      'pt': 'Correspondência:',
    },
    'ohxf6i6i': {
      'es': 'Correo:',
      'en': 'Mail:',
      'pt': 'Correspondência:',
    },
    'tatcadvs': {
      'es': 'Contraseña:',
      'en': 'Password:',
      'pt': 'Senha:',
    },
    'gutbu4io': {
      'es': 'Empezar',
      'en': 'Begin',
      'pt': 'Começar',
    },
    '9nk8o2vq': {
      'es': 'Ingresar',
      'en': 'Get into',
      'pt': 'Entrar',
    },
    'rhgeqy2d': {
      'es': 'Bienvenido de vuelta',
      'en': 'welcome back',
      'pt': 'Bem vindo de volta',
    },
    '7c38jde3': {
      'es': 'Llene con la infromacion de su cuenta ',
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
    'mhcd71z0': {
      'es':
          'No solo te ejercitas, te transformas \n Unete a nosotros en esta experiencia',
      'en':
          'You don\'t just exercise, you transform \n Join us in this experience',
      'pt':
          'Você não apenas se exercita, você transforma \n Junte-se a nós nesta experiência',
    },
    'pivdaskv': {
      'es': 'Inicia tu suscripción hoy mismo',
      'en': 'Start your subscription today',
      'pt': 'Comece sua assinatura hoje',
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
    'wpql79l7': {
      'es': 'Información',
      'en': 'General',
      'pt': 'Em geral',
    },
    'whsful3m': {
      'es': 'Contacto',
      'en': 'Contact',
      'pt': 'Contato',
    },
    'lzdb68om': {
      'es': 'Información',
      'en': 'Medium',
      'pt': 'Médio',
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
  // SobreNosotros
  {
    '0luvijwg': {
      'es': 'Redes Sociales',
      'en': '',
      'pt': '',
    },
    'xv2ad8kw': {
      'es': 'Ubicación',
      'en': '',
      'pt': '',
    },
    'wdhmtrd5': {
      'es': 'Atrás',
      'en': '',
      'pt': '',
    },
    '18m4rdn5': {
      'es': 'Home',
      'en': '',
      'pt': '',
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
