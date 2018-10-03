# Hypatia:LMS-React 

## More info

Demo: [https://hypatia-8d923.firebaseapp.com](https://hypatia-8d923.firebaseapp.com)

You can sign up or use the demo account (read-only): demo@hypatialms.com / demouser



)

## Getting Started

- Install Node.js >= 4.5.0 [https://nodejs.org/](https://nodejs.org/)

- Install a Git client. I recommend SourceTree [https://www.sourcetreeapp.com/](https://www.sourcetreeapp.com/)

- Clone this repository into a folder in your computer [https://help.github.com/articles/which-remote-url-should-i-use/](https://help.github.com/articles/which-remote-url-should-i-use/)

- Install the NPM dependencies:

````
npm install
````

- Create a new project in your Firebase account

- Create a file called `firebase.jsx` in `/app/src/constants/` and add the following code with the details from the project you created:

````
export const firebaseConfig = {
  	apiKey: "",
    authDomain: "",
    databaseURL: "",
	storageBucket: "",
    messagingSenderId: ""
}
````

- Import `/data/hypatia-export.json` into your Firebase database

- Set the Firebase database rules to:

````
".read": "true",
".write": "auth != null"
````

- Create a `posts` folder in Firebase storage and upload demo images with the same filename as the posts' slugs (i.e.: /posts/new-virtual-campus.jpg)

- Set the Firebase storage rules to:

````
allow read: if true;
allow write: if request.auth != null;
````

- Create as many groups (teams) in Slack.com as you want and add a custom integration (BOT) to each one of them

- Create a file called `slack.jsx` in `/app/src/constants/` with the following structure. Enter the apiToken for each BOT you created and enter the details that make more sense to your groups

````
export const slackGroups = [{
		name: 'Maths',
		id: 'maths',
		slug: 'MA',
		apiToken: ""
	},
	{
		name: 'English',
		id: 'english',
		slug: 'EL',
		apiToken: ""
	}						
]
````

### Start development server with hot reloading

````
npm run dev
````

### Testing

Run test once

````
npm run test
````

Test watch

````
npm run test:watch
````

### Linting

Linting is using Airbnb Eslint configuration

````
npm run lint
````

### Deploy to production

Build for production

````
npm run build
````

Install Firebase tools (if you haven't done it yet)

````
npm install -g firebase-tools
````

Login and init the project

````
firebase login
firebase init
````

Deploy to Firebase

````
firebase deploy
````

