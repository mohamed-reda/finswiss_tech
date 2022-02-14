import 'dart:async';

import '../models/people.dart';
import '../repository/people_repository.dart';
import '../models/response_helper.dart';

class Event {}

class GetJSONEvent extends Event {}

class GetJSONAgain extends Event {}

class PullToEvent extends Event {}

/// event => Bloc => state
class GetJSONBloc {
// event
  ResponseHelper<People> _responseHelper = ResponseHelper(
      hasError: true,
      errorMessage: 'An Error occurred',
      isLoading: true,
      data: People());

  get responseHelper => _responseHelper;
  final _streamController = StreamController<ResponseHelper<People>>();

  StreamSink<ResponseHelper<People>> get _inputOfStreamController =>
      _streamController.sink;

  Stream<ResponseHelper<People>> get outputOfStreamController =>
      _streamController.stream;

  //----------------------------------
  final _eventController = StreamController<Event>();

  //  just the sink (the input) for the event
  Sink<Event> get eventSink {
    return _eventController.sink;
  }

  GetJSONBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  _mapEventToState(Event event) async {
    _responseHelper = await getRequest();
    _inputOfStreamController.add(_responseHelper);
  }

  pull() async {
    await _mapEventToState(PullToEvent());
    return;
  }

  void dispose() {
    _streamController.close();
    _eventController.close();
  }

  Future<void> getAgain() async {
    _responseHelper.isLoading = true;
    _responseHelper.hasError = true;
    _inputOfStreamController.add(_responseHelper);
    eventSink.add(GetJSONAgain());
  }
}
