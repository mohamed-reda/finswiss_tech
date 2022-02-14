import 'package:finswiss_tech/widgets.dart';
import 'package:flutter/material.dart';

import '../models/people.dart';
import '../models/response_helper.dart';
import 'shared_response_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get some JSON'),
      ),
      body: SharedResponsePage(
        functionOfSuccess: (ResponseHelper<People> responseHelper) {
          /// Here You should convert the response (responseHelper.data) to your model and use that model at the UI
          return ListView.builder(
            itemCount: responseHelper.data.results.length,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Person number $index',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          RowOfPersonData(
                              text: 'Name',
                              value: responseHelper.data.results[index].name),
                          RowOfPersonData(
                              text: 'height',
                              value: responseHelper.data.results[index].height),
                          RowOfPersonData(
                              text: 'mass',
                              value: responseHelper.data.results[index].mass),
                          RowOfPersonData(
                              text: 'hairColor',
                              value:
                                  responseHelper.data.results[index].hairColor),
                          RowOfPersonData(
                              text: 'skinColor',
                              value:
                                  responseHelper.data.results[index].skinColor),
                          RowOfPersonData(
                              text: 'eyeColor',
                              value:
                                  responseHelper.data.results[index].eyeColor),
                          RowOfPersonData(
                              text: 'birthYear',
                              value:
                                  responseHelper.data.results[index].birthYear),
                          RowOfPersonData(
                              text: 'gender',
                              value: responseHelper
                                  .data.results[index].gender.name),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        functionOfError:
            (ResponseHelper<People> responseHelper, Function getDataAgain) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(responseHelper.errorMessage),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    getDataAgain();
                  },
                  color: Colors.grey,
                  child: Text('Get the Data Again'),
                ),
              )
            ],
          );
        },
        loadingWidget: const CircularProgressIndicator(),
      ),
    );
  }
}
