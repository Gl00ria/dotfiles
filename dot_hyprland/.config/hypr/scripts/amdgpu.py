import pyamdgpuinfo
import json

def format_frequency(frequency_hz: int) -> str:
    """
    Takes a frequency (in Hz) and normalizes it: `Hz`, `MHz`, or `GHz`

    Returns:
        str: frequency string with the appropriate suffix applied
    """
    return (
        format_size(frequency_hz, binary=False)
        .replace("B", "Hz")
        .replace("bytes", "Hz")
    )

def format_size(size: int, binary=True) -> str:
    """
    Format size in bytes to a human-readable format.

    Args:
        size (int): Size in bytes.
        binary (bool): If True, use binary (base 1024) units.

    Returns:
        str: Formatted size string.
    """
    suffixes = ["B", "KiB", "MiB", "GiB", "TiB"] if binary else ["B", "KB", "MB", "GB", "TB"]
    base = 1024 if binary else 1000
    index = 0

    while size >= base and index < len(suffixes) - 1:
        size /= base
        index += 1

    return f"{size:.0f} {suffixes[index]}"

def main():
    # Detect the number of GPUs available
    n_devices = pyamdgpuinfo.detect_gpus()
    
    if n_devices == 0:
        print("No AMD GPUs detected.")
        return
    
    # Get GPU information for the first GPU (index 0)
    first_gpu = pyamdgpuinfo.get_gpu(0)
    
    try:
        # Query GPU temperature
        temperature = first_gpu.query_temperature()
        temperature = f"{temperature:.0f}°C"  # Format temperature to 2 digits with "°C"
        
        # Query GPU core clock
        core_clock_hz = first_gpu.query_sclk()  # In Hz
        formatted_core_clock = format_frequency(core_clock_hz)
        
        # Query GPU power consumption
        power_usage = first_gpu.query_power()

        # Query GPU load
        gpu_load = first_gpu.query_load()
        formatted_gpu_load = f"{gpu_load:.1f}%"  # Format GPU load to 1 decimal place

        # Create a dictionary with the GPU information
        gpu_info = {
            "GPU Temperature": temperature,
            "GPU Load": formatted_gpu_load,
            "GPU Core Clock": formatted_core_clock,
            "GPU Power Usage": f"{power_usage} Watts"
        }
        
        # Convert the dictionary to a JSON string, ensure_ascii=False to prevent escaping
        json_output = json.dumps(gpu_info, ensure_ascii=False)

        # Print the JSON string
        print(json_output)
        
    except Exception as e:
        print(f"Error: {str(e)}")
    
if __name__ == "__main__":
    main()
