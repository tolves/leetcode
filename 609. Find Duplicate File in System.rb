# @param {String[]} paths
# @return {String[][]}
# group_by better
def find_duplicate(paths)
    h = {}
    temp_h = {}
    res = []
    paths.each { |path|
        file = path.split(' ')
        root = file[0]
        file.shift
        file.each { |f|
            temp_p = f.split('(')
            h[root+'/'+temp_p[0]] = temp_p[1].chop
        }
    }
    h.each_pair { |path, value|
        if temp_h[value]
            temp_h[value] = temp_h[value] + ',' + path
        else
            temp_h[value] = path
        end
    }
    temp_h.each_value { |value|
        x = value.split(',')
        res.push x if x.length>1
    }
    res
end