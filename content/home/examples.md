# Rooted in Cause & Effect

Good Deals focuses attention on what drives value for service businesses and builds the tactical actions from there. This makes for a simple interface that facilitates focus on valuable actions rather than lots of context switching.

TODO: we need to edit this to have a different example. Ideally we'd have a stacked area graph of supply and demand for hours that can be switched into $$s.

[demo](/examples/paint/app.imba?preview=md&dir=1&titlebar=1&windowed=1&title=Paint%20Demo)

> Strategic thinking is built in and wether you're focused on sales or delivery the highest value action is easy to know

# Complete solution for service businesses

Good Deals contains everything you need to make deals, collect and manage money and hire and manage a team's time. 

[demo](/examples/express/app.imba?dir=1&preview=md&windowed=1&title=HN%20Clone&url=https://simple-hn.imba.io/top)

Good Deals even has built in contracts and project templates to make fair and good deals as simple as keeping your word.

# Time Elevated

Service businesses face the ultimate challenge everyday - taking time and making it valuable. Whether your managing yourself or your team your profit and long term success is based on how well you do each day at improving your worth and finding people who value you and you can work well with. Service businesses in this way are the ultimate challenge of time management. 

Unlike other apps Good Deals promotes a focus on using time well and maximizing it's value. Our tool helps you and your team plan around the things that are impotant to them and build for a sustainable future through knowlege of the past and present.

[demo](/examples/simple-clock?&windowed=1&title=Clocks&ar=1)

Eventually our goal - and what we are building towards - is a tool that creates a universal plan for eliminating debt and creating a society of free owners. This is part of the [Conara](https://conara.life) mission to create a society of free owners and the [Ronin Society](https://theroninsociety.com) mission to create an investable and competitive small market asset class.

[demo](/examples/clock?&windowed=1&title=Clocks&ar=1)


# Blazing fast, Zero config

Imba comes with a built-in bundler based on the blazing fast [esbuild](https://esbuild.github.io/). Import stylesheets, images, typescript, html, workers and more without any configuration. Bundling is so fast that there is no difference between production and development mode - it all happens on-demand.

[demo](/examples/tic-tac-toe?windowed=1&title=Tic-tac-toe)

# Getting Started

Getting started with Imba is as simple as running `npx imba create hello-world` in your terminal to create a new imba project based on a simple template.

Make sure to install the [VS Code plugin](https://marketplace.visualstudio.com/items?itemName=scrimba.vsimba). It provides fantastic auto-completion with type inference, style previews, semantic coloring and much more. Read the [documentation](/docs/intro) for a thorough introduction to the language.

# Basic Syntax [quick-tour]

```imba
let number = 42
let bool = yes

# strings
let string = 'the answer is 42'
let dynamic = "the answer is {number}"
let template = `the answer is {number}`

# dimensions
let length = 20px
let duration = 150ms

let regex = /answer is (\d+)/
let array = [1,2,3]
let object = {name: 'Imba', type: 'language'}
```

```imba
class Todo
    # properties
    prop title
    prop completed = no
    prop due = null

    # methods
    def complete
        completed = yes

    # getters
    get overdue
        due and due < new Date

let todo = new Todo title: 'Read introduction'
```

```imba
# elements are first class citizens
const list = <ul title="reminders">
    <li> "Remember milk"
    <li> "Greet visitor"

# setting classes on elements
<div.panel.large> "Hello world"
# setting dynamic and conditional classes
<div.panel.state-{state} .hidden=condition> "Panel"
# binding handlers (with modifiers)
<div.panel @click.prevent=handler> "Panel"
```

```imba
# looping over iterables
for {id,name} of iterable
    "{name} has id {id}"

# looping over Object.keys/values pairs
for own key,value of object
    [key,value]

# fast looping over arrays
for member,index in array
    member
```

# Join us!

We are a small but active community of early Imba users. Jump on our [Discord](https://discord.gg/mkcbkRw) to say hi! Recordings of all our community meetings can be found [here](https://www.youtube.com/playlist?list=PLf1a9PYKGPdl3OMBHV72Oz23eFy9q51jJ).

Imba has been under active development for 6+ years now, and activity is only ramping up. We're looking for contributors who would like to help improve documentation and the ecosystem around Imba.

Everyone is welcome to the community meetings (via Zoom)! This is a great place to report your issues, hangout and talk about your project using Imba. For the exact meeting times please use the [Meetup group](https://www.meetup.com/Imba-Oslo-Meetup), this is where you can see the timezone, cancellations, etc.
