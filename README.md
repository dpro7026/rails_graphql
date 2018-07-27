# README

## GraphiQL
```
mutation {
  createLink (
    url: "http://davidprovest.com",
    description: "My awesome personal website",
  ) {
    id
    url
    description
  }
}
```
```
{
  allLinks {
    id
    url
    description
  }
}
```
