# simple excel like vlookup in ruby

def vlookupHash options
	vlHash = Hash.new

	file = options[:file]
	joinkey = options[:key_separator]
	keyFields = options[:key_fields]
	fields = options[:fields]

	CSV.foreach(file, quote_char: '"', col_sep: ',', row_sep: :auto, headers: true) { |line|

			nLine,keys = Array.new,Array.new

			keyFields.each {|k|
				keys << line[k]
			}

			key = keys.join(joinkey)

			fields.each {|f|
				nLine << line[f]
			}

			vlHash[key] = nLine

			nLine = nil
	}

	return vlHash
end

#usage

#vlookupHash(file: file, key_separator: '', key_fields: ['Col1','Col2'], fields: ['Field1','Field2','field3'])

#file> source file
#key_fields> fields used to lookup key
#fields> fields you want to get from the file

