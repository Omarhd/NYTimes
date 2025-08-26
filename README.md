NYTimes

NYTimes is a simple iOS app that fetches the Most Popular Articles from the New York Times API and displays them in a master/detail interface. Selecting an article shows the details view with title, abstract, image, byline, published date, and relevant tags.

Architecture

The app uses a clear, modular architecture leveraging the Coordinator pattern for navigation:
	•	Coordinator (AppCoordinator): Centralizes navigation and routing logic. Handles pushing, presenting, and dismissing views in a clean, decoupled way. Kingfisher is used for asynchronous image loading, caching, and efficient memory management within navigation views and content.
	•	Repository Layer: Handles all data access and API requests. Abstracts network calls and provides structured responses to the UseCase layer, using async/await for modern concurrency and cleaner asynchronous networking code.
	•	UseCase Layer: Contains business logic for fetching and processing data. Interacts with repositories and prepares data for ViewModels.
	•	ViewModels (NewsListViewModel, NewsDetailsViewModel): Manages state, handles async calls via UseCases, and publishes data to Views. Includes ViewState management for loading, loaded, and error states.
	•	Views (SwiftUI): SwiftUI views like NewsListView, NewsRowView, NewsDetailsView render the UI. They observe ViewModels and reactively update based on published state changes.

This architecture ensures:
	•	Separation of Concerns: Each layer has a single responsibility.
	•	Reusability and Testability: Repositories and UseCases can be unit tested independently.
	•	Scalable Navigation: Coordinator pattern allows safe and predictable navigation flows.
	•	Image Handling: Kingfisher handles efficient image loading, caching, and memory management within views.
	•	Modern Networking: Uses Swift’s async/await for all network calls.

App Schemes

The project contains multiple schemes to support different environments:
	•	Development: For active development and API testing.
	•	Local: For testing with local mock data.
	•	Release: For production deployment.

Running the Project
	1.	Clone the repository.
	2.	Open NYTimes.xcodeproj in Xcode 15+.
	3.	Select the desired scheme (Development, Local, Release).
	4.	Set your NY Times API key in the network layer.
	5.	Select a simulator or device and press Run (⌘R).

Notes
	•	The codebase is generic and simple, using modern Swift and SwiftUI best practices.
	•	Coordinator pattern ensures smooth navigation.
	•	State management in ViewModels ensures predictable UI behavior.
	•	Kingfisher handles image caching and performance efficiently.
	•	Unit tests ensure the core logic is verified, independent of network or image loading.
	•	Networking is implemented using async/await, making async code clean, readable, and maintainable.
