FROM microsoft/nanoserver

ADD https://az880830.vo.msecnd.net/nanoserver-ga-2016/Microsoft-NanoServer-IIS-Package_base_10-0-14393-0.cab /install/Microsoft-NanoServer-IIS-Package_base_10-0-14393-0.cab
ADD https://az880830.vo.msecnd.net/nanoserver-ga-2016/Microsoft-NanoServer-IIS-Package_English_10-0-14393-0.cab /install/Microsoft-NanoServer-IIS-Package_English_10-0-14393-0.cab

RUN dism.exe /online /add-package /packagepath:c:\install\Microsoft-NanoServer-IIS-Package_base_10-0-14393-0.cab & \
    dism.exe /online /add-package /packagepath:c:\install\Microsoft-NanoServer-IIS-Package_English_10-0-14393-0.cab & \
    dism.exe /online /add-package /packagepath:c:\install\Microsoft-NanoServer-IIS-Package_base_10-0-14393-0.cab

RUN powershell -command rm -Recurse C:\install -Force
