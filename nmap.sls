# just 32-bit x86 installer available
{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
nmap:
  Not Found:
    full_name: 'Nmap 6.47'
    installer: 'http://nmap.org/dist/nmap-6.47-setup.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Nmap\uninstall.exe"'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
