name             'uru'
maintainer       'Evan Machnic'
maintainer_email 'emachnic@gmail.com'
license          'All rights reserved'
description      'Installs/Configures uru'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

recipe 'uru',          'Downloads the Uru binary for the server platform and installs in specified directory'
recipe 'uru::unix',    'Downloads the Uru binary archive and unpacks the "uru_rt" executable file'
recipe 'uru::install', 'Installs Uru depending on the platform'
recipe 'uru::upgrade', 'Removes the old "uru_rt" executable if found'

depends 'tar', '~> 0.0.4'

attribute 'uru/username',
  display_name: 'Uru Username',
  description:  'Username that Uru will run under',
  type:         'string',
  required:     'required'

attribute 'uru/home_dir',
  display_name: 'Uru Home Directory',
  description:  'Home directory of the Uru Username',
  type:         'string',
  required:     'required'

attribute 'uru/action',
  display_name: 'Uru Action',
  description:  'Way to run the Uru cookbook',
  type:         'string',
  choice:       [ 'install', 'upgrade' ],
  required:     'required',
  default:      'install'

attribute 'uru/version',
  display_name: 'Uru Version',
  description:  'Version of Uru to install',
  type:         'string',
  required:     'required',
  default:      '0.6.4'

attribute 'uru/src_url',
  display_name: 'Uru Source URL',
  description:  'URL for Uru downloads',
  type:         'string',
  required:     'required',
  default:      'http://downloads.sourceforge.net/project/urubinaries/uru/#{node["uru"]["version"]}/'

attribute 'uru/src_filename',
  display_name: 'Uru Source Filename',
  description:  'Filename of the Uru binary package',
  type:         'string',
  required:     'required',
  default:      'uru-#{node["uru"]["version"]}-#{platform}-x86.#{extension}'
