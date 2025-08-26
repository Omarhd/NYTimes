NYTimes iOS Application

The NYTimes iOS Application is designed to fetch and display the New York Times’ Most Popular Articles.
It presents a clean and modern interface where users can browse articles in a master list and view detailed information for each article, including the title, abstract, byline, publication date, images, and related tags.

⸻

Application Architecture

This application has been implemented using a modular, object-oriented architecture.
The architecture is structured around the Coordinator pattern, ensuring clear navigation flows and strong separation of concerns.

Coordinator (AppCoordinator)

Responsible for managing navigation and routing within the application.
It centralizes the control of pushing, presenting, and dismissing views.
Kingfisher is integrated here to handle asynchronous image loading, caching, and memory management for a seamless user experience.

Repository Layer

Encapsulates all interactions with the API.
Responsible for executing network requests and returning structured responses.
The networking implementation leverages Swift’s async/await concurrency model, ensuring clean, readable, and maintainable asynchronous code.

UseCase Layer

Contains the core business logic of the application.
Acts as an intermediary between the repository and the ViewModels, transforming raw data into meaningful information for presentation.

ViewModels

The ViewModels, such as NewsListViewModel and NewsDetailsViewModel, manage the state of the application.
They interact with UseCases to perform asynchronous operations and publish changes to the Views.
A ViewState enumeration is employed to represent different states (loading, loaded, error), ensuring predictable UI behavior.

Views (SwiftUI)

SwiftUI views like NewsListView, NewsRowView, and NewsDetailsView render the user interface.
They observe their corresponding ViewModels and automatically update when state changes occur.

⸻

App Schemes

The project includes dedicated schemes for multiple environments:
	•	Development – Used during active development and API integration testing.
	•	Local – Designed for testing with mock data in a controlled environment.
	•	Release – Configured for production builds and deployment.

⸻

Running the Application
	1.	Clone the repository.
	2.	Open the project file NYTimes.xcodeproj in Xcode 15+.
	3.	Select the appropriate scheme (Development, Local, Release).
	4.	Provide your NY Times API key in the networking configuration.
	5.	Select a simulator or device and press Run (⌘R).

⸻

Key Notes
	•	The codebase follows modern Swift and SwiftUI best practices.
	•	Navigation is implemented using the Coordinator pattern.
	•	Kingfisher provides efficient image loading, caching, and memory management.
	•	Networking is implemented using async/await for modern concurrency.
	•	Unit tests ensure the reliability of the application’s core logic.
