# PlasMusic Toolbar


<p align="center">
  <img src="./plasmusic-toolbar-demo.gif" />
</p>

## Overview

PlasMusic Toolbar is a widget for KDE Plasma 5 and KDE Plasma 6 that shows currently playing song information and provide playback controls.

It leverages MPRIS2 data engine to retrieve information and execute operations.

## Features

### 🎵 Now Playing Song
- Show the currently playing song's title and artist in the KDE panel

### ⏯️ Playback Controls
- Manage your music effortlessly with Play, Pause, Next, and Previous controls directly from the KDE panel.

### 📸 Full View
- Full View provides the album image, along with Play, Pause, Next, Previous, Shuffle, and Repeat controls. Adjust the volume and track position with ease.

### 🛠️ Configurations
- **Icon customization:** Change the widget's icon in the panel view to suit your preferences.
- **Playback controls visibility:** Choose whether to display Play, Pause, Next, and Previous controls in the panel view.
- **Preferred source**: Change the widget preferred source for music information (spotify, vlc, etc). As default the widget use `@multiplex` source.
- **Playing song max display width**: Determine the maximum width for displaying the currently playing song in the panel. When the song's text exceeds this maximum width, the text will scroll horizontally.
- **Playing song scrolling speed**: Change the scrolling speed of the song's text.

## Installation

### KDE store

You can install the widget directly from the kde store:

- https://store.kde.org/p/2088872

### Manual
1. Clone the repository:
    ```sh
    git clone git@github.com:ccatterina/plasmusic-toolbar.git /tmp/plasmusic-toolbar
    ```

2. Install the widget:

    ```sh
    # plasma5
    plasmapkg2 -i /tmp/plasmusic-toolbar/src/plasma5

    # plasma6
    plasmapkg2 -i /tmp/plasmusic-toolbar/src/plasma6
    ```

3. Upgrading the widget:

    ```sh
    # plasma5
    plasmapkg2 -u /tmp/plasmusic-toolbar/src/plasma5

    # plasma6
    plasmapkg2 -u /tmp/plasmusic-toolbar/src/plasma6
    ```

4. Removing the widget:

    ```sh
    # plasma5
    plasmapkg2 -r plasmusic-toolbar

    # plasma6
    plasmapkg2 -r plasmusic-toolbar
    ```