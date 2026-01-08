from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='python_pub_sub',
            executable='project_1_publisher',
            name='project_1_publisher_node',
           
        ),
        Node(
            package='python_pub_sub',
            executable='project_1_subscriber',
            name='project_1_subscriber_node',
           
        ),
    ])

