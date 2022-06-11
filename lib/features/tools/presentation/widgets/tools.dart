import 'package:flutter/material.dart';

import 'tool_item.dart';

class Tools extends StatelessWidget {
  const Tools({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(bottom: 20),
          child: Text('Tools & FrameWorks',
              style: Theme.of(context).textTheme.titleSmall)),
      const ToolItem(text: 'Mobile Development'),
      const SizedBox(height: 5),
      const ToolItem(text: 'Git, Github, Bitbucket, Gitlab'),
      const SizedBox(height: 5),
      const ToolItem(text: 'Flutter, React Native, Native'),
      const SizedBox(height: 5),
      const ToolItem(text: 'API, GraphQL, REST'),
      const SizedBox(height: 5),
      const ToolItem(text: 'Docker, Kubernetes, Terraform'),
      const SizedBox(height: 5),
      const ToolItem(text: 'NodeJS, Express, Fastfy'),
      const SizedBox(height: 5),
      const ToolItem(text: 'Fiber, Rocket, Gin'),
      const SizedBox(height: 5),
      const ToolItem(text: 'MVC, MVP, MVVM'),
      const SizedBox(height: 5),
      const ToolItem(text: 'Clean Architecture'),
      const SizedBox(height: 5),
      const ToolItem(text: 'AWS, Google Cloud'),
      const SizedBox(height: 5),
      const ToolItem(text: 'MongoDB, PostgreSQL, MySQL'),
    ]);
  }
}
