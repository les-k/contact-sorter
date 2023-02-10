class User:
    def __init__(self, name, location, platform, interactions, followers):
        self.name = name
        self.location = location
        self.platform = platform
        self.interactions = interactions
        self.followers = followers

def extract_users(platform):
    # Extracting the followers and friends from the given platform and returning a list of User objects
    users = []
    # Example users list, replace this with actual code to extract followers and friends from the platform
    if platform == "Facebook":
        users.append(User("John Doe", "New York", "Facebook", 5, 1000))
        users.append(User("Jane Doe", "London", "Facebook", 3, 500))
        users.append(User("Jim Smith", "Paris", "Facebook", 2, 100))
    elif platform == "Instagram":
        users.append(User("John Doe", "Los Angeles", "Instagram", 4, 1500))
        users.append(User("Jane Doe", "Paris", "Instagram", 2, 700))
        users.append(User("Jim Smith", "London", "Instagram", 1, 200))
    elif platform == "Twitter":
        users.append(User("John Doe", "London", "Twitter", 3, 800))
        users.append(User("Jane Doe", "New York", "Twitter", 5, 1200))
        users.append(User("Jim Smith", "Paris", "Twitter", 1, 300))
    return users

def sort_users_by_location(users):
    # Sorting the users by their location
    sorted_users = sorted(users, key=lambda x: x.location)
    return sorted_users

def sort_users_by_interactions(users):
    # Sorting the users by the number of interactions they have with your posts
    sorted_users = sorted(users, key=lambda x: x.interactions, reverse=True)
    return sorted_users

def sort_users_by_followers(users):
    # Sorting the users by the number of followers they have
    sorted_users = sorted(users, key=lambda x: x.followers, reverse=True)
    return sorted_users

def print_sorted_users(sorted_users):
    # Printing the sorted users
    for user in sorted_users:
        print("- " + user.name + " (" + user.location + ") " + str(user.interactions) + " interactions, " + str(user.followers) + " followers")

platforms = ["Facebook", "Instagram", "Twitter"]
for platform in platforms:
    print("\nSorted users on " + platform + " by location:")
    users = extract_users(platform)
    sorted_users = sort_users_by_location(users)
    print_sorted_users(sorted_users)

    print("\nSorted users on " + platform + " by interactions:")
    sorted_users = sort_users_by_interactions(users)
    print_sorted_users(sorted_users)

    print("\nSorted users on " + platform + " by followers:")
sorted_users = sort_users_by_followers(users)
print_sorted_users(sorted_users)



