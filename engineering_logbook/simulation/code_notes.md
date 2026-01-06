# Simulation-Notes Template
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
# Entry Added on 2026-01-07 10:27:33
## Update on ROS2 Python Publisher/Subscriber Example
## Date
2026-01-07

## Author
Noah Garsia

## Component
python_pub_sub package

## File_Name
- test/pytest_sub.py
- test/pytest_pub.py

## Change
- Created test cases using `pytest` to verify the functionality of the publisher & subscirber node, including node creation, message counter increment, and message content format.

## Reason
- To validate the functionality and ensure the publisher and subsciber work correctly

## Validation
- Validated all the pytest passed

## Notes