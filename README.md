# Chucks
USA Today project 2 - Build something that enables people to tell a story


### Resources:
https://github.com/ga-students/wdidc5-project2
https://docs.google.com/file/d/0Bx7tdR54GpBlWXFjekV3Z1dwM2c/edit

## Description
Create an application that tracks how users feel about current political issues and topics.

### Timeline
### 1. Day 1 deliverables
- User Research
- User Flows
- Design Studio sketches
- Sketches with annotations
- Initial Prototype
- Usability Testing
- Dev feedback
- Dev Research
- Pseudocode
- Git Hub Repo

### 2. Deploy completed MVP by Wednesday, 12:30 pm
### 3. Feature planning meeting 1:30 - 2:30
### 4. Set additional feature milestones
### 5. Final product Friday, 10:30 am


## Schedule

### Milestones:

#### 1. Deploy MVP 
- Basic home page with brief deccription of the application and a single menu button taking the user to the next page, where they will be given a prompt
- Give the user a random prompt (quote) and 6 bottons, each representing one of the four major emotions.
- Once the user picks an option, they are taken to a page displaying how everyone else felt about the prompt

#### A. ERD


#### B. Data Model
- Quote - has_many responses
	- has an id
	- has a category
	- has a topic
	- has content
	- has an author
	- has a location
	- has a date
- Response - belong_to a quote, has_one emoji
	- has a response id
	- has a quote id - relative key
	- has an emotion id - 1-6
	- has user input from home page (zipcode, gender, political orientation)
- Emotions - belongs_to a response
	- has an id (1-6)
	- has a url
	- has a title/name (happy, sad, glad, angry)
	
Quotes have many responses, Response has an emotions

#### C. Views
- Layout
	- header: title partial to display user selection with conditional
	- body with <%= yeild %>
	- footer linking to github repo
	
.Response

- Index view to use as home page and display about/title, takes basic user input
	- **postcard partial**: show postcard
	- conditional *true* to render intro/welcome text and user input
- New view to show post card with quote and take in user emotion
	- **postcard partial**
		- conditional, shows text of a random quote pulled from DB
	- emojis partial
		- pull each emoji icon from DB
		- display inline with padding between each
		- each as link_to /show, post emoji_id
- Show view to display data viz and graphics, as third page 
	- each frame as a partial?
		- frame 1: quote, total number of similar responses, etc. 
		- frame 1: render pie chart of responses and table of response break down
	- next card partial

#### D. Models
- Quotes
	- show quote (to_s method?)
	- get quote, return as hash?
		- { :author => "Hillary Clinton", :content => "Cool with the gays", :date => "April 19, 2014"}
- Response
	- calculate total responses
	- calculate break down of responses, return as hash?
		- { emoji_id = number_of_responses }
		- { 1 => 37, 2 => 50, 3 => "10}
	- Wikipedia API - get abstract of article on category > topic
	
- Emoji model

#### E. Controllers
- Quotes controller
	- 
- Response controller
	- takes 















