FROM node:10-slim


LABEL version="1.0.0"
LABEL repository="https://github.com/dschep/filter-event-action"
LABEL homepage="https://github.com/dschep/filter-event-action"
LABEL maintainer="Daniel Schep <dschep@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for Filtering on Event Payloads"
LABEL "com.github.actions.description"="Run JavaScript expressions against the parsed contents of the file at GITHUB_EVENT_PATH"
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="black"

COPY entrypoint.js entrypoint.js

ENTRYPOINT ["node", "/entrypoint.js"]
