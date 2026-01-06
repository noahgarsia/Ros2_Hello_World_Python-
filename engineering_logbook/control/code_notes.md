# Control-Notes Template
## Date
YYYY-MM-DD

## Author
Name of the person making the change.

## Component
Node, package, or subsystem affected.

## File_Name
Relevant file(s) modified.

## Change
What was added, modified, or removed.

## Reason
Why the change was made.

## Validation
How the change was verified (e.g. logs, simulation, hardware).

## Notes
Additional observations, trade-offs, assumptions, or follow-up items.


---
# Entry Added on 2026-01-07 10:21:44

## Update on Subscriber Node in ROS2 Control System

## Date
2026-01-07

## Author
Noah Garsia

## Component
python_pub_sub package, specifically the subscriber node.

## File_Name
- `src/python_pub_sub/python_pub_sub/subscriber.py`

## Change
Implemented a minimal ROS2 subscriber node that subscribes to the `/project_1_example_topic` and logs the received "Hello World" messages.

## Reason
To enable the system to listen to and process messages published on the `/project_1_example_topic`, which is essential for the system's decision-making and response capabilities.

## Validation
The functionality of the subscriber node was validated through the implementation of a test script (`pytest_sub.py`) that ensures the subscriber correctly receives and logs the message content.

## Notes
The subscriber node is a critical component in the control system as it determines how the system responds to incoming data. Future improvements could include handling different message types or implementing more complex logic based on the received data.