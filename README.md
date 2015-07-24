# scripts
Simple scripts for file (mainly csv) manipulation

# ruby simple vlookup implementation

usage:

...ruby
temp = vlookupHash(file: file, key_separator: '', key_fields: ['Col1','Col2'], fields: ['Field1','Field2','field3'])
...
file: source file
key_fields: fields used to lookup key
fields: fields you want to get from the file
