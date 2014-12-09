Main objectives:
* Better color scheme
* Fully responsive with mobile support
* Animated dynamic menu
* Grid as content
* Better rendering time
* Better navigation principles
* Blog capability with email lists.
* SEO friendliness: Sitemaps, Server side rendering, Mobile first approach.
* Searchable content (full text search for the moment, fuzzy text search in the future, sorting by date).

Navigation principles:
* A clear main menu with 4 main entries:
  * Home page.
  * Tutorial for basic usage.
  * Advanced usage.
  * Blog.
  * A 5th entry will be created when fview-lab will be publicly available.
* Home works a landing page, a long SPA with information loaded while scrolling.
* Except home, all entries have a side menu:
  * For smartphone, the side menu is materialized thanks to an hamburger / sliding menu pattern.
  * For desktop, the side menu is a sticky one.
  * Search
    * A 6th entry on mobile, a corner access as overlay for the desktop.

Site structure:
* Home page
  * Demonstration:
    * One animation at the beginning. If multiple animations are available, it uses a Lightbox of them. The Lightbox content is randomly created so that the landing page ensures excitements for returning to the site as a retention measure.
    * The page is duplicated depending on communications leading to the site: the goal is to track which channel of communication ensure what.
    * One summary of an announcement (the others will be available as blog entries): new plugins, new prize, incoming news, API changes, ...
    * Testimonials.

* Tutorial page for basic users.
  * Installation with links to other tutorials (ex. links to Meteor install).
  * Tutorial like the build of a complete app: a story teller approach.
  * Specific mobile part.
  * Plugin usage.

* Advanced usage:
  * Inner API.
  * Advanced component and plugin usage.
  * Contributing guide.
  * FAQ (caveats, constraints).
  * Issue work around an reproductions
  * Links to Github.

* Blog
  * Articles sorted by date or main subjects.
  * Articles can be seen on the main site as part of the side menus entries.

* FView-lab
  * Basic tutorial for a mobile app.
  * Gamification and viralization of achieved tutorial.
