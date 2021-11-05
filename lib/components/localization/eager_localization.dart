
import 'package:bytebank/components/localization/locale.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewI18N {
  String _language;

  ViewI18N(BuildContext context) {
    // o problema dessa abodagem
    // é o rebuild quando você troca a lingua
    // o que você quer reconstruir quando trocar o currentlocalecubit?
    // em geral, eh comum reinicilizar o sistema, ou voltar para a tela inicial.
    this._language = BlocProvider.of<CurrentLocaleCubit>(context).state;
  }

  String localize(Map<String, String> values) {
    assert(values != null);
    assert(values.containsKey(_language));
    // você poderia definir que o padrão eh mostrar em inglês ao invés de quebrar
    // a aplicação

    return values[_language];
  }
}