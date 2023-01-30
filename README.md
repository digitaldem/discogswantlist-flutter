# Discogs Want List Viewer

## Overview

This project is a starter project using [Riverpod](https://riverpod.dev/) and [Riverpod Navigator](https://pub.dev/packages/riverpod_navigator).

Create your want list on [Discogs](https://www.discogs.com), generate a [Personal Access Token](https://www.discogs.com/settings/developers) and supply your user details in assets/configuration.json



## Architecture Flow
Screens return a Widget Tree

Widgets render based on StateNotifiers

StateNotifiers invoke Services

Services orchestrate Repositories

Repositories load data from HTTP endpoints

