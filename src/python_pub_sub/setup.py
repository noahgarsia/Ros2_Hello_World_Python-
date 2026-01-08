from setuptools import find_packages, setup
import os
from glob import glob

package_name = 'python_pub_sub'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
            ('share/' + package_name, ['package.xml']),
            #Install all the launch files into a share directory
            (os.path.join('share', package_name, 'launch'), glob('launch/*.py')),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='Noah Garsia',
    maintainer_email='noahgarsia@outlook.com',
    description='A minimal ROS2 publisher and subscriber example in Python.',
    license='Apache License 2.0',
    extras_require={
        'test': ['pytest'],
    },
    entry_points={
        'console_scripts': [
            'project_1_publisher = python_pub_sub.publisher:main',
            'project_1_subscriber = python_pub_sub.subscriber:main',
        ],
    },
)
