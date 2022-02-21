# sysstat
## check the following pages:
1. https://github.com/sysstat/sysstat
2. http://sebastien.godard.pagesperso-orange.fr

## collect system activity data

    /usr/lib/sysstat/sadc -S ALL 1 sysstat_data.sa

## analyze the system activity data

1. CPU Usage

    sar -u -f sysstat_data.sa -s HH:MM:SS -e HH:MM:SS

2. Memory Usage

    sar -r -f sysstat_data.sa -s HH:MM:SS -e HH:MM:SS

3. Disk I/O

    sar -p -d -f sysstat_data.sa -s HH:MM:SS -e HH:MM:SS

# nvidia-smi

      nvidia-smi --query-gpu=timestamp,pstate,utilization.gpu,utilization.memory,memory.total,memory.free,memory.used --format=csv -l 1 -f gpu_stat.csv 

## Jetson Nano (Tegra-based platforms)

    sudo tegrastats