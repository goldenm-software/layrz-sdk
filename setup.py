""" Setup file for layrz-sdk. """
import setuptools


def read(filename):
  import os
  return open(os.path.join(os.path.dirname(__file__), filename), 'r', encoding='utf-8').read()

def get_requirements():
  with open('requirements.txt', 'rb') as f:
    lines = f.read().decode('utf-8').splitlines()

  return [line for line in lines if not line.startswith('--')]

setuptools.setup(
  name="layrz-sdk",
  version="2.0.0",
  author="Layrz",
  author_email="software@layrz.com",
  url='https://gitlab.com/layrz-software/libraries/layrz-sdk',
  license='MIT',
  description="Layrz SDK",
  long_description=read('README.md'),
  keywords='sdk goldenm lcl layrz compute language',
  packages=setuptools.find_packages(),
  classifiers=[
    "Programming Language :: Python :: 3",
    "License :: OSI Approved :: MIT License",
    "Operating System :: OS Independent",
  ],
  install_requires=get_requirements(),
  python_requires='>=3.8',
)
