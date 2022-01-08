<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-challange">About this challange</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#my-attempt">My Attempt</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
<!--     <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li> -->
  </ol>
</details>



<!-- ABOUT THE CHALLANGE -->
## About The Challange

This was a full-stack developer take home assignement by mercedes-benz (year unknown).
> File can be found here : [mercedes-benz-backend-develop-entry-level.pdf](https://github.com/JensenYuen/mercedes-benz-challange/files/7832763/mercedes-benz-backend-develop-entry-level.pdf)

The requirement was to build a Ruby on Rails application which would interact with the [MapBox API](https://www.mapbox.com/). The application would take a latitude and longitude from the user and spit out names of museums around the given location grouped by their postcode as a JSON file.


<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

* [Ruby on Rails](https://rubyonrails.org/)

<p align="right">(<a href="#top">back to top</a>)</p>

## My Attempt

Firstly, I had to understand how the API call would be made.
Following the documentation from the pdf and API documentation, using the following code I should get a response from the mapbox API with a list of places.
> `https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?types=poi&proximity=#{longitude},#{latitude}&access_token={your_access_token}`

After the succuessful API call and response, the file I received was a list of museums with detailed information about the museum. The next step was to rewrite the data into a simpler format where the postal code would represent the museum name. 

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Installation

1. Get a free API Key at [Mapbox](https://www.mapbox.com/)
2. Clone the repo
   ```sh
   gh repo clone JensenYuen/mercedes-benz-challange
   ```
3. Install Ruby gems & yarn packages
   ```sh
   cd mercedes-benz-challange
   bundle install
   yarn install 
   ```
4. create a .env file within the file directory
   ```sh
   touch .env 
   ```
5. Enter your API_key in `.env`
   ```js
   MAPBOX_API=YOUR_API_KEY
   ```
6. Start the server
   ```sh 
   rails s
   ```
7. Access the site using any brower 
   ```
   http://localhost:3000
   ``` 
8. Enter any location (latitude and longitude) and search

<p align="right">(<a href="#top">back to top</a>)</p>
