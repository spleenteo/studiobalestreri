## Setup

```
git clone git@gitlab.cantierecreativo.net:cantiere/studiobalestreri-2018.git
```

And then:

```
bundle install
yarn install
```

## How to deploy

First you need to add the production remote:

```
git remote add production git@gitlab.cantierecreativo.net:cantiere/studiobalestreri-2018.git
```

Then just git push to production, Netlify will take care of everything:

```
git push production
```
