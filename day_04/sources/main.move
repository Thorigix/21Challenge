/// DAY 4: Vector + Ownership Basics
///
/// Today you will:
/// 1. Learn about vectors
/// 2. Create a list of habits
/// 3. Understand basic ownership concepts

module challenge::day_04;

use std::vector;

// Copy the Habit struct from day_03
public struct Habit has copy, drop {
    name: vector<u8>,
    completed: bool,
}

public fun new_habit(name: vector<u8>): Habit {
    Habit {
        name,
        completed: false,
    }
}

public struct HabitList has drop { habits: vector<Habit> }

<<<<<<< HEAD
// TODO: Write a function 'empty_list' that returns an empty HabitList
// public fun empty_list(): HabitList {
//     // Use vector::empty() to create an empty vector
// }
=======
>>>>>>> 29dcaea (Day 4: Completed)
public fun empty_list(): HabitList {
    HabitList { habits: vector::empty() }
}

<<<<<<< HEAD
// TODO: Write a function 'add_habit' that takes:
// - list: &mut HabitList (mutable reference)
// - habit: Habit (by value, transfers ownership)
// Use vector::push_back to add the habit
// public fun add_habit(list: &mut HabitList, habit: Habit) {
public fun add_habit(list: &mut HabitList, habit: Habit) {
    HabitList { habits: vector::push_back(&mut list.habits, habit) }
=======
public fun add_habit(list: &mut HabitList, habit: Habit) {
    vector::push_back(&mut list.habits, habit)
>>>>>>> 29dcaea (Day 4: Completed)
}
