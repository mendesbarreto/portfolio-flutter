import 'package:flutter/material.dart';

import 'tool_item.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(bottom: 20),
          child: Text('Tools & FrameWorks',
              style: Theme.of(context).textTheme.titleSmall)),
      const ToolItemWidget(text: 'Mobile Development'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'Git, Github, Bitbucket, Gitlab'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'Flutter, React Native, Native'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'API, GraphQL, REST'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'Docker, Kubernetes, Terraform'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'NodeJS, Express, Fastfy'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'Fiber, Rocket, Gin'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'MVC, MVP, MVVM'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'Clean Architecture'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'AWS, Google Cloud'),
      const SizedBox(height: 5),
      const ToolItemWidget(text: 'MongoDB, PostgreSQL, MySQL'),
    ]);
  }
}
