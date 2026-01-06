# Project Scope - Template
## Description
- Brief description of the project and its intended purpose.

## In Scope
- Features or functionality included in this project

## Out of Scope
- Features or functionality explicitly not included

## Assumptions
- Key assumptions made during development

## Constraints
- Known technical, time, or resource constraints


---
# Entry Added on 2026-01-07 10:41:17
## Update to Project Scope for ROS2 Publisher/Subscriber Example
### TODAY'S DATE: 2026-01-07
# Project Scope - ROS2 Publisher/Subscriber Example
## Description
- This project is a minimal example of a ROS2 publisher and subscriber implemented in Python. It demonstrates basic communication between nodes using the ROS2 framework, specifically focusing on publishing and subscribing to "Hello World" messages.

## In Scope
- Implementation of a ROS2 publisher node (`MinimalPublisher`) that periodically publishes "Hello World" messages to the topic `/project_1_example_topic`.
- Implementation of a ROS2 subscriber node (`MinimalSubscriber`) that listens to messages on the topic `/project_1_example_topic`.
- Basic testing of the publisher node to verify node creation, message content, and message counter increment using `pytest`.

## Out of Scope
- Advanced ROS2 features such as services, actions, or parameter server usage.
- Integration with other ROS2 packages or external systems.
- Deployment or usage in a production environment.

## Assumptions
- The user has a working ROS2 environment with Python support.
- The user is familiar with basic ROS2 concepts such as nodes, topics, and messages.

## Constraints
- The project is limited to the functionality provided by the `rclpy` and `std_msgs` packages.
- The example is designed to be minimal and educational, not optimized for performance or scalability.