# Scripts
Simple scripts for file (mainly csv) manipulation

##ruby simple vlookup implementation

```ruby
temp = vlookupHash(file: file, key_separator: '', key_fields: ['Col1','Col2'], fields: ['Field1','Field2','field3'])
```
__file:__ source file,
__key_fields:__ fields used to lookup key,
__fields:__ fields you want to get from the file
