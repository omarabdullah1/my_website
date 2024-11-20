import 'package:jaspr/jaspr.dart';

import '../components/service_card.dart';
import '../models/service_data.dart';

class ServicesSection extends StatelessComponent {
  final List<ServiceData> services;
  const ServicesSection({
    super.key,
    required this.services,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'services-section', [
      span(classes: 'title', [
        text('What I can do?'),
      ]),
      span(classes: 'subtitle', [
        text("I may not be perfect but surely I'm of some use :)"),
      ]),
      div(classes: 'section-body', id: 'services', [
        for (final service in services)
          ServiceCard(
            icon: service.icon,
            label: service.title,
          ),
      ])
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.services-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 5.vh),
        ),
    css('.section-body')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
          wrap: FlexWrap.wrap,
        )
        .box(
          margin: EdgeInsets.only(top: 50.px),
          width: 100.percent,
        ),
  ];
}
