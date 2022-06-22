import 'package:flutter/material.dart';

import '../../../../common/r.dart';
import 'my_services_card.dart';

class MyServicesGrid extends StatelessWidget {
  const MyServicesGrid({super.key});

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
        MyServicesCard(
          title: 'Mobile Development',
          description: 'iOS, Android, Flutter',
          icon: R.iconMobileDevelopment,
        ),
        MyServicesCard(
          title: 'Backend Development',
          description: 'TypeScript/JS, GoLang, C#',
          icon: R.iconBackendDevelopment,
        ),
        MyServicesCard(
          title: 'Web Development',
          description: 'iOS, Android, Flutter',
          icon: R.iconWebDevelopment,
        ),
        MyServicesCard(
          title: 'Consulting',
          description: 'Cloud, Development, Devops etc',
          icon: R.iconConsultation,
        ),
        MyServicesCard(
          title: 'Mentoring',
          description: 'Help people learn to code',
          icon: R.iconMentoring,
        ),
        MyServicesCard(
          title: 'DevOps',
          description: 'K8s, Docker, Terraform',
          icon: R.iconDevops,
        ),
      ],
    );
  }
}
