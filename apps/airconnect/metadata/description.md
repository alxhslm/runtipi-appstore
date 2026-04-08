# AirConnect

Stream audio from any AirPlay source (iPhone, iPad, Mac) to devices that don't natively support AirPlay — including Chromecast, UPnP speakers, and Sonos.

## Features

- **AirCast**: Bridges AirPlay to Google Cast / Chromecast devices
- **AirUPnP**: Bridges AirPlay to UPnP and Sonos speakers
- **Zero configuration**: Auto-discovers devices on your local network
- **Host networking**: Runs directly on the host network for reliable mDNS/multicast discovery

## Setup

No setup required. Once running, your Chromecast and UPnP/Sonos devices will appear as AirPlay targets on your Apple devices within a few seconds.

## Advanced

Use the toggles to enable or disable each bridge. You can also pass extra command-line arguments to each binary:

- **AirCast arguments**: passed directly to the `aircast` binary (e.g. `-x /config/config.xml`)
- **AirUPnP arguments**: passed directly to the `airupnp` binary (e.g. `-l 1000:2000` for Sonos/Heos compatibility)

See the [AirConnect documentation](https://github.com/philippe44/AirConnect) for the full list of supported arguments.
