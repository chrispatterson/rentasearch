```
   __            _                                _     
  /__\ ___ _ __ | |_ __ _ ___  ___  __ _ _ __ ___| |__  
 / \/// _ \ '_ \| __/ _` / __|/ _ \/ _` | '__/ __| '_ \ 
/ _  \  __/ | | | || (_| \__ \  __/ (_| | | | (__| | | |
\/ \_/\___|_| |_|\__\__,_|___/\___|\__,_|_|  \___|_| |_|
                                                        
```

# Requirements
* Should implement a `Property` model with `address: string city: string state: string`
* Should implement a `Unit` model with `property_id: integer bedroom_count: integer bathroom_count: integer square_footage: integer rent_price: decimal`
* Implement full CRUD functionality for both Property and Unit models.
* Ensure that users can create, read, update, and delete properties and their associated units.
* Create a search page that lists all properties along with their associated unit information (with pagination)

## For Evaluators
The admin experience is best started at http://localhost:3000/properties (assuming you have the app running at `http://localhost:3000` - update as-needed). You can either create a number of properties and units through the CRUD interface, or through the Rails console directly.

The search experience will be the application root. Because the requirements stated all properties should be returned, right now the `SearchProperties` service is doing just that - since refining this and making search functional is a likely enhancement choice, I've gone ahead and created that.

## Notes
I've used RSpec, even though the version targeting Rails 8 has not been released yet. I don't expect breaking changes, and tests do pass for now.

## Potential Enhancements
* Actually implement search (the requirements say to show all properties, so that's the current behavior)
* Requiring authentication to access CRUD functionality
* Map to show locations (my assumption here is that we'll need to store lat/lon for properties as part of that work but I'm curious about other options)
* Test coverage for controllers
* Data validation and other business requirements
* i18n / l10n work
