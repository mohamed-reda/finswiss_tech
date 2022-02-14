import 'package:flutter/material.dart';

import '../bloc/get_json_bloc.dart';
import '../models/people.dart';
import '../models/response_helper.dart';

// ignore: must_be_immutable
class SharedResponsePage extends StatefulWidget {
  /// This very important page to use it as as
  /// a common page with pages for example:
  /// for pages that needs to call Try again to get the data
  /// for pages that needs to just Refresh
  Function functionOfSuccess;
  Widget loadingWidget;
  Function functionOfError;

  SharedResponsePage({
    Key? key,
    required this.functionOfSuccess,
    required this.functionOfError,
    required this.loadingWidget,
  }) : super(key: key);

  @override
  _SharedResponsePageState createState() => _SharedResponsePageState();
}

class _SharedResponsePageState extends State<SharedResponsePage> {
  late final GetJSONBloc _bloc;

  @override
  void initState() {
    _bloc = GetJSONBloc();
    _bloc.eventSink.add(GetJSONEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await _bloc.pull();
        // return;
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: StreamBuilder<ResponseHelper<People>>(
            stream: _bloc.outputOfStreamController,
            initialData: _bloc.responseHelper,
            builder: (BuildContext context,
                AsyncSnapshot<ResponseHelper<People>> snapshot) {
              if (snapshot.data!.isLoading) {
                return widget.loadingWidget;
              } else if (snapshot.data!.hasError) {
                return widget.functionOfError(snapshot.data, () {
                  _bloc.getAgain();
                  _bloc.eventSink.add(GetJSONAgain());
                });
              } else {
                return widget.functionOfSuccess(snapshot.data);
              }
            },
          ),
        ),
      ),
    );
  }
}
