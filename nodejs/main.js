const { Person, PhoneNumber, PhoneType } = require('./addressbook_pb');

// Create a Person object with phone numbers
const person = new Person();
const phone1 = new PhoneNumber();
phone1.setNumber('123-456-7890');
phone1.setType(PhoneType.HOME);

const phone2 = new PhoneNumber();
phone2.setNumber('987-654-3210');
phone2.setType(PhoneType.MOBILE);

person.setPhoneNumbersList([phone1, phone2]);

console.log("Person to JSON:");
console.log(person.toObject());  // Converts to a JSON-compatible object

// Empty phone numbers
const emptyPhonePerson = new Person();
emptyPhonePerson.setPhoneNumbersList([]);

console.log("Empty Phone Person to JSON:");
console.log(emptyPhonePerson.toObject());

// Default person with no phone numbers
const defaultPerson = new Person();

console.log("Default Person to JSON:");
console.log(defaultPerson.toObject());
