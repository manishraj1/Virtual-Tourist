# Virtual-Tourist

This app allows users specify travel locations around the world, and create virtual photo albums for each location. The locations and photo albums will be stored in Core Data.

<a><img src="https://user-images.githubusercontent.com/88855727/150642639-1605c905-e6eb-4fa1-af7c-9f46ce4eca81.png" width="230"></a>
<a><img src="https://user-images.githubusercontent.com/88855727/150642644-47fb11c1-3b1e-455d-9ac2-bb478c1e17d6.jpeg" width="230"></a>
<a><img src="https://user-images.githubusercontent.com/88855727/150642645-4c59192e-4dde-49d7-a7d6-547f489d7ca4.jpeg" width="230"></a>

# Implementation

App Specification: Virtual Tourist

users specify travel locations around the world, and create virtual photo albums for each location. The locations and photo albums will be stored in Core Data.

The app will have two view controller scenes.

- Travel Locations Map View: Allows the user to drop pins around the world
- Photo Album View: Allows the users to download and edit an album for a location

# How To Build

The scenes are described in detail below.

1) Travel Locations Map:
- When the app first starts it will open to the map view. Users will be able to zoom and scroll around the map using standard pinch and drag gestures.
The center of the map and the zoom level should be persistent. If the app is turned off, the map should return to the same state when it is turned on again.
Tapping and holding the map drops a new pin. Users can place any number of pins on the map.
When a pin is tapped, the app will navigate to the Photo Album view associated with the pin.

2) Photo Album:
- If the user taps a pin that does not yet have a photo album, the app will download Flickr images associated with the latitude and longitude of the pin.
If no images are found a “No Images” label will be displayed.
If there are images, then they will be displayed in a collection view.
While the images are downloading, the photo album is in a temporary “downloading” state in which the New Collection button is disabled. The app should determine how many images are available for the pin location, and display a placeholder image for each.

- Once the images have all been downloaded, the app should enable the New Collection button at the bottom of the page. Tapping this button should empty the photo album and fetch a new set of images. Note that in locations that have a fairly static set of Flickr images, “new” images might overlap with previous collections of images.
Users should be able to remove photos from an album by tapping them. Pictures will flow up to fill the space vacated by the removed photo.
All changes to the photo album should be automatically made persistent.
Tapping the back button should return the user to the Map view.

- If the user selects a pin that already has a photo album then the Photo Album view should display the album and the New Collection button should be enabled.

# Requirements

Built in
Xcode Version 13.2.1 (13C100)
Swift 5

# License

©CopyRight
Created by Manish raj(MR)

Udacity iOS Developer Nanodegree Project


