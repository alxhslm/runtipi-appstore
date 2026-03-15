# Time Machine NAS

Backup your Mac to your RunTipi server with ease.

## Features
- **Samba-based**: Uses the latest Samba version for speed and reliability.
- **vfs_fruit**: Includes mandatory Apple extensions for Time Machine compatibility.
- **mDNS/Avahi**: Automatically discoverable in macOS Backup settings.
- **Additional SMB Share**: Includes a general-purpose 'Archive' share (or your custom name) alongside Time Machine.
- **Auto-Permissions**: Automatically corrects host folder permissions on startup for seamless file access.

## Setup Instructions
1.  **Time Machine**: Open **System Settings > General > Time Machine** on your Mac. Click **Add Backup Disk...** and your RunTipi server should appear.
2.  **Additional Share**: Access your files via `smb://<your-tipi-ip>/Archive` (default) using your configured Samba credentials.
