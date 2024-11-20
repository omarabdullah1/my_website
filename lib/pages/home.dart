import 'dart:convert';
import 'dart:io';

import 'package:jaspr/server.dart';

import '../components/nav_bar.dart';
import '../models/data.dart';
import '../sections/about_me.dart';
import '../sections/basic_info.dart';
import '../sections/contact.dart';
import '../sections/projects.dart';
import '../sections/services.dart';

class Home extends AsyncStatelessComponent {
  Future<Data> fetchData() async {
    final String fileResponse =
        File('${Directory.current.path}/web/data/data.json').readAsStringSync();
    final Map<String, dynamic> raw =
        jsonDecode(fileResponse) as Map<String, dynamic>;

    final data = Data.fromJson(raw);
    return data;
  }

  @override
  Stream<Component> build(BuildContext context) async* {
    final data = await fetchData();

    yield div(classes: 'home-body', [
      NavBar(),
      BasicInfoSection(
        basic: data.basic,
        socials: data.socials,
      ),
      AboutMeSection(
        about: data.about,
        basic: data.basic,
      ),
      ServicesSection(
        services: data.services,
      ),
      ProjectsSections(
        projects: data.projects,
      ),
      ContactSection(
        contacts: data.contact,
      ),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.home-body')
        .box(
          width: 100.vw,
        )
        .background(
          color: Colors.black,
        ),
  ];
}
