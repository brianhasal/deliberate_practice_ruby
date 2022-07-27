
VIDEO: Array Intersection
in list From Brute to Linear
Description
VIDEO: Think Like a Software Engineer Episode #34

Given two arrays, return a new array that contains the intersection of the two arrays. The intersection means the values that are contained in both of the arrays. Do not use the "&", or any built-in intersection methods.

NOTE: You must accomplish this in O(n) time. This is also known as linear time.

Input: [1, 2, 3, 4, 5], [1, 3, 5, 7, 9]
Output: [1, 3, 5]





Array Subset
in list From Brute to Linear
Description
Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

NOTE: You must accomplish this in O(n) time. This is also known as linear time.

Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
Output: true

Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
Output: false





Array Duplicate
in list From Brute to Linear
Description
A given array has one pair of duplicate values. Return the first duplicate value.

NOTE: You must accomplish this in O(n) time. This is also known as linear time.

Input: [5, 2, 9, 7, 2, 6]
Output: 2







Missing Letter
in list From Brute to Linear
Description
A given string contains all the letters from the alphabet except for one. Return the missing letter.

NOTE: You must accomplish this in O(n) time. This is also known as linear time.

Input: “The quick brown box jumps over a lazy dog”
Output: “f”






First Unique Character
in list From Brute to Linear
Description
Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

NOTE: You must accomplish this in O(n) time. This is also known as linear time.

Examples:

s = "leetcode"
return 0.
(The "l" is the first character that only appears once in the string, and appears at index 0.)

s = "loveleetcode",
return 2.
(The "l" and "o" are repeated, so the first non-repeating character is the "v", which is at index 2.)

Note: You may assume the string contain only lowercase letters.






Two Sum II
in list From Brute to Linear
Description
This is the same exercise as Two Sum I, but you must now solve it in linear time.

Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

Input: [2, 5, 3, 1, 0, 7, 11]
Output: [3, 7]

Input: [1, 2, 3, 4, 5]
Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)







ETL #4
in list From Brute to Linear
Description
This is very similar to ETL #3, but you must now accomplish the task in linear time (O(N)).

Given an array of Youtube videos, for example:

[
{title: 'How to Make Wood', author_id: 4, views: 6},
{title: 'How to Seem Perfect', author_id: 4, views: 111},
{title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
{title: 'Why Pigs Stink', author_id: 1, views: 12}
]

and an array of authors, for example:

[
{id: 1, first_name: 'Jazz', last_name: 'Callahan'},
{id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
{id: 3, first_name: 'Saron', last_name: 'Kim'},
{id: 4, first_name: 'Teena', last_name: 'Burgess'},
]

Return a new array of videos in the following format, and only include videos that have at least 100 views:

[
{title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
{title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
]




