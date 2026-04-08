# Alex's Runtipi App Store

My personal app store for the [Runtipi](https://runtipi.io) platform.

## Apps

| App | Description | Project |
|-----|-------------|---------|
| [AirConnect](apps/airconnect/) | Bridges AirPlay to Chromecast, UPnP, and Sonos devices | [philippe44/AirConnect](https://github.com/philippe44/AirConnect) |
| [Time Machine NAS](apps/timemachine-nas/) | Apple Time Machine compatible Samba NAS server with Bonjour discovery | [mbentley/docker-timemachine](https://github.com/mbentley/docker-timemachine) |

## Structure

Each app lives under `apps/<id>/` and contains:

- `config.json` — app metadata and form fields
- `docker-compose.json` — Docker service definition
- `metadata/description.md` — app description
- `metadata/logo.jpg` — app logo

## Contributing

PRs welcome — feel free to submit new apps or improvements to existing ones.
