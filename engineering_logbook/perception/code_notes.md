# Perception-Notes Template
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
Additional observations, trade-offs, assumptions, or follow-up 
items.




---
# Entry Added on 2026-01-07 10:05:51

## Update on Python Publisher Node in ROS2 Perception Package

## Date
2026-01-07

## Author
Noah Garsia

## Component
python_pub_sub package

## File_Name
- publisher.py


## Change
- Created a minimal ROS2 publisher node (`MinimalPublisher`) that publishes "Hello World" messages to the `/project_1_example_topic` topic.


## Reason
The changes were made to establish a basic publisher setup in Python to publish a counter that a subsiber node can listne to. 

## Validation
The changes were validated using pytest to ensure:
- The publisher node is created correctly with the expected node name and topic.
- The message counter increments as expected.
- The published message content is formatted correctly.

## Notes
- The package was split from a joint Python and C++ package to separate Python and C++ packages.
- The publisher node is responsible for publishing data that the subscriber node receives, focusing on the data flow within the perception system.