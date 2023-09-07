import Foundation

//var likeCount: Double = 4
//var commentCount: Double = 0
//var viewCount: Double = 100

likeCount += 1
likeCount -= 1
likeCount *= 1.5
likeCount /= 2

// Порядок очередности, сначала * потом +
likeCount = likeCount + 2 * 1.5
likeCount = (likeCount + 2) * 1.5

// Более детально))

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

likeCount += 0

print(likeCount)

if likeCount == 5 {
    print("5 likes")
} else {
    print("Nothing likes")
}

if likeCount != 5 {
    print("Nothing likes")
}

if likeCount > 5 {
    print("Nothing likes")
}

if likeCount >= 5 {
    print("5 likes and more")
}

if likeCount < 5 {
    print("Nothing likes")
}

if likeCount <= 5 {
    print("5 likes and nothing")
}

if likeCount > 3 && commentCount > 0 {
    print("bla bla bla")
}

if likeCount > 3 || commentCount > 0 {
    print("be be be")
}

if likeCount == 5 {
    print("bla t t")
} else if likeCount > 2 {
    print("popopo")
} else if likeCount > 1 {
    print("wewewe")
} else {
    print("No")
}
