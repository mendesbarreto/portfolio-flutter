import 'package:flutter/material.dart';

import '../../../../common/presentation/widget/r.dart';
import 'my_services_card.dart';

class MyServicesGridWidget extends StatelessWidget {
  const MyServicesGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      shrinkWrap: true,
      childAspectRatio: 1.4,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        MyServicesCardWidget(
          title: 'Mobile Development',
          description: 'iOS, Android, Flutter',
          icon: R.iconMobileDevelopment,
        ),
        MyServicesCardWidget(
          title: 'Backend Development',
          description: 'TypeScript/JS, GoLang, C#',
          icon: R.iconBackendDevelopment,
        ),
        MyServicesCardWidget(
          title: 'Web Development',
          description: 'iOS, Android, Flutter',
          icon: R.iconWebDevelopment,
        ),
        MyServicesCardWidget(
          title: 'Consulting',
          description: 'Cloud, Development, Devops etc',
          icon: R.iconConsultation,
        ),
        MyServicesCardWidget(
          title: 'Mentoring',
          description: 'Help people learn to code',
          icon: R.iconMentoring,
        ),
        MyServicesCardWidget(
          title: 'DevOps',
          description: 'K8s, Docker, Terraform',
          icon: R.iconDevops,
        ),
      ],
    );
  }
}
