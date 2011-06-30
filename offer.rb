
def prefix(full_name)
    return File.basename(full_name, File.extname(full_name))
end

def filter(full_names)
    both_names = full_names.map { |name| {prefix(name) => [name]} }
    names_by_prefix = both_names.inject do |acc, val| 
        acc.merge(val) { |key, v1, v2| v1 + v2 }
    end
    return names_by_prefix.keys.map { |key| names_by_prefix[key][0] }
end

