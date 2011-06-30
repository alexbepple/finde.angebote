
def prefix(full_name)
    return File.basename(full_name, File.extname(full_name))
end

def select_name(names)
    pdfs = names.select { |name| name.end_with? 'pdf' }
    return pdfs.first || names.first
end

def filter(full_names)
    names_by_prefix = full_names.group_by { |name| prefix(name) }
    return names_by_prefix.keys.map { |key| select_name(names_by_prefix[key]) }
end

