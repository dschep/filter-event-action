#!/usr/bin/env node

const fs = require('fs')
const vm = require('vm')

const event = JSON.parse(fs.readFileSync(process.env.GITHUB_EVENT_PATH))

if (process.env.DEBUG) {
    console.log(event)
}

if (!vm.runInNewContext(process.argv[2], { event }))
    process.exit(78)


