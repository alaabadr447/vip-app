import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../providers.dart';

class MultiProviderWidget extends StatelessWidget {
  final Widget view;

  const MultiProviderWidget({super.key, required this.view});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: Providers.getproviders,
        child:view);
    }
}
