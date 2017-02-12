# MAC Address Spoof Tool for macOS Sierra (Roku, Apple TV, etc)
A small bash tool for spoofing your macOS device's MAC addresses so you can get your Roku (or other streaming 
device) on your hotel WiFi. 

This will only work if your hotel WiFi allows connection based on the device's MAC address. If you ask a
hotel employee about this, they will not know what you're talking about, so I would just try the tool and 
if it doesn't work, then probably they use another authentication method.

## Usage

The tool will walk you through the steps you need to take. For clarity's sake, here's the rundown:

### 1 - Find out your Mac's interface. This is typically en0 or en1. 

In Terminal, run:

`ifconfig`

You'll see a list of devices in the readout. Look at en0 and en1. If you're connected to WiFi, 
you will `status: active` next to the appropriate device. 

*Henceforth, we shall use `en0` as our example interface.

### 2 - For verification purposes, note your Mac's MAC address. 

This can be found under your interface device's 
cursory information list where you found the device status. It looks something like:

`ether 0a:00:00:a0:00:00`

### 3 - Run the tool (requires sudo access):

`sudo path/to/directory/rokuspoof.sh`

You'll be prompted for the interface device:

`Enter your MacBook's Wifi interface (example; en1 | en0 | etc):`

### 4 - Enter your streaming device's MAC address

`Enter your Roku's MAC address:`

You'll find this in the settings of your device. This is different depending on your system. 
For instance, on a Roku device, this is found by navigating to Settings > System > About

You'll want to note the "Wireless MAC Address"

Instead of writing it down, I took a picture of it with my iPhone.

### 5 - Authenticate with your hotel's wifi

This is the tricky part. The tool will stop while you perform this step. Once, it helped to toggle my WiFi on and off, 
and I had to wait a couple of minutes for the WiFi to realize my MAC address had changed. Once that happened, I 
was able to enter the password just fine.

After you authenticate, you can hit return and your MAC address will then be returned to the default. 
This is done to avoid having to reboot, but it's your life. If you'd rather reboot, go ahead.

### 6 - Connect your streaming device

At this point, you should be able to join your hotel's WiFi! Yay! 

You're on your own here. Connection steps vary between devices.

Enjoy!

