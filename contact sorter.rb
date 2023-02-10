import re

class Contact:
    def __init__(self, name, phone_number, platforms):
        self.name = name
        self.phone_number = phone_number
        self.platforms = platforms

def extract_contacts():
    # Extracting the contacts from the phone and returning a list of Contact objects
    contacts = []
    # Example contacts list, replace this with actual code to extract contacts from phone
    contacts.append(Contact("John Doe", "+1-555-555-1234", ["WhatsApp", "Facebook", "Instagram", "TikTok"]))
    contacts.append(Contact("Jane Doe", "+1-555-555-5678", ["LinkedIn", "YouTube"]))
    contacts.append(Contact("Jim Smith", "+1-555-555-9101", ["WhatsApp", "Facebook"]))
    return contacts

def categorize_contacts(contacts):
    # Categorizing the contacts based on the social media platforms they are present on
    whatsapp = []
    facebook = []
    instagram = []
    linkedin = []
    tiktok = []
    youtube = []
    others = []
    for contact in contacts:
        if "WhatsApp" in contact.platforms:
            whatsapp.append(contact)
        if "Facebook" in contact.platforms:
            facebook.append(contact)
        if "Instagram" in contact.platforms:
            instagram.append(contact)
        if "LinkedIn" in contact.platforms:
            linkedin.append(contact)
        if "TikTok" in contact.platforms:
            tiktok.append(contact)
        if "YouTube" in contact.platforms:
            youtube.append(contact)
        if len(contact.platforms) > 1:
            others.append(contact)
    return whatsapp, facebook, instagram, linkedin, tiktok, youtube, others

def print_categorized_contacts(categorized_contacts):
    # Printing the categorized contacts
    whatsapp, facebook, instagram, linkedin, tiktok, youtube, others = categorized_contacts
    print("Contacts on WhatsApp:")
    for contact in whatsapp:
        print("- " + contact.name + " (" + contact.phone_number + ")")
    print("\nContacts on Facebook:")
    for contact in facebook:
        print("- " + contact.name + " (" + contact.phone_number + ")")
    print("\nContacts on Instagram:")
    for contact in instagram:
        print("- " + contact.name + " (" + contact.phone_number + ")")
    print("\nContacts on LinkedIn:")
    for contact in linkedin:
        print("- " + contact.name + " (" + contact.phone_number + ")")
    print("\nContacts on TikTok:")
    for contact in tiktok:
        print("- " + contact.name + " (" + contact.phone_number + ")")
    print("\nContacts on YouTube:")
    for contact in youtube:
        print("- " + contact.name + " (" + contact.phone_number + ")")
    print("\nContacts on multiple platforms:")
    for contact in others:
        print("- " + contact.name + " (" + contact.phone_number + ")")

contacts = extract_contacts()
categorized_contacts = categorize_contacts(contacts)
print_categorized_contacts(categorized_contacts)



