# Planning our application
1. Answer Questions
	- What are we building?
	- Who are we building it for?
	- What features do we need to have?
2. User Stories
3. Model our Data
4. Think through the pages we need in our app

## Questions

1. What are we building? We are building a personal porfolio site.  

2. Who are we building it for? We are building it for ourselves, but also the community. To keep track of all of our projects, to be able to view a project, see where we left of last, and to be able to refresh instantly what is going on with that project. Show potential employers that we know what we are doing.  

3. What features do we want to have?
	- Projects
		- Create / Edit / Destroy
		- Markdown
		- Syntax highlighting
		- Comments (Disqus)
    A project show page will have
    * link to project repo
    * project description
    * project notes
	
  - Contact
		- Contact form
		- Sendgrid
	
  - User (Devise)

## User Stories
As a blank, I want to be able to blank, so that blank.
- As a user, I want to be able to create projects, so as to be able to quickly refresh what is going on with that project
- As a user, I want to be able to edit & destroy projects, so that I can manage the projects I am working on
- As a user, I want to show the visitors and potential employers examples of my work, or stuff I’ve built.
- As a user, I want to be able to have visitors contact me through a form on my site.
- As a user, I want visitors to be able to leave comments on my posts.

## Modeling our Data

**Project**
  - has_many :notes
  - has_one :user
  - title:string
  - link:string
  - description:text

**Notes**
  - belongs_to :Project
  - title:string
  - content:text

**User**
  - has_many :projects

## Think through the pages we need in our app

- Home
- Projects#index
- Projects#show
- Project#new
- User#login (No signup, I am only user)
- Notes#new 
- Notes#edit
- Contact