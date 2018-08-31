 import Foundation
import Contacts

public final class DeviceContactPhoneNumberData: Equatable {
    public let label: String
    public let value: String
    
    public init(label: String, value: String) {
        self.label = label
        self.value = value
    }
    
    public static func == (lhs: DeviceContactPhoneNumberData, rhs: DeviceContactPhoneNumberData) -> Bool {
        if lhs.label != rhs.label {
            return false
        }
        if lhs.value != rhs.value {
            return false
        }
        return true
    }
}

public final class DeviceContactEmailAddressData: Equatable {
    public let label: String
    public let value: String
    
    public init(label: String, value: String) {
        self.label = label
        self.value = value
    }
    
    public static func == (lhs: DeviceContactEmailAddressData, rhs: DeviceContactEmailAddressData) -> Bool {
        if lhs.label != rhs.label {
            return false
        }
        if lhs.value != rhs.value {
            return false
        }
        return true
    }
}

public final class DeviceContactUrlData: Equatable {
    public let label: String
    public let value: String
    
    public init(label: String, value: String) {
        self.label = label
        self.value = value
    }
    
    public static func == (lhs: DeviceContactUrlData, rhs: DeviceContactUrlData) -> Bool {
        if lhs.label != rhs.label {
            return false
        }
        if lhs.value != rhs.value {
            return false
        }
        return true
    }
}

public final class DeviceContactAddressData: Equatable, Hashable {
    public let label: String
    public let street1: String
    public let street2: String
    public let state: String
    public let city: String
    public let country: String
    public let postcode: String
    
    public init(label: String, street1: String, street2: String, state: String, city: String, country: String, postcode: String) {
        self.label = label
        self.street1 = street1
        self.street2 = street2
        self.state = state
        self.city = city
        self.country = country
        self.postcode = postcode
    }
    
    public static func == (lhs: DeviceContactAddressData, rhs: DeviceContactAddressData) -> Bool {
        if lhs.label != rhs.label {
            return false
        }
        if lhs.street1 != rhs.street1 {
            return false
        }
        if lhs.street2 != rhs.street2 {
            return false
        }
        if lhs.state != rhs.state {
            return false
        }
        if lhs.city != rhs.city {
            return false
        }
        if lhs.country != rhs.country {
            return false
        }
        if lhs.postcode != rhs.postcode {
            return false
        }
        return true
    }
    
    public var hashValue: Int {
        var result = 0
        result = result &* 31 &+ self.label.hashValue
        result = result &* 31 &+ self.street1.hashValue
        result = result &* 31 &+ self.street2.hashValue
        result = result &* 31 &+ self.state.hashValue
        result = result &* 31 &+ self.city.hashValue
        result = result &* 31 &+ self.country.hashValue
        result = result &* 31 &+ self.postcode.hashValue
        return result
    }
}

public final class DeviceContactSocialProfileData: Equatable, Hashable {
    public let label: String
    public let service: String
    public let username: String
    
    public init(label: String, service: String, username: String) {
        self.label = label
        self.service = service
        self.username = username
    }
    
    public static func == (lhs: DeviceContactSocialProfileData, rhs: DeviceContactSocialProfileData) -> Bool {
        if lhs.label != rhs.label {
            return false
        }
        if lhs.service != rhs.service {
            return false
        }
        if lhs.username != rhs.username {
            return false
        }
        return true
    }
    
    public var hashValue: Int {
        var result = 0
        result = result &* 31 &+ self.label.hashValue
        result = result &* 31 &+ self.service.hashValue
        result = result &* 31 &+ self.username.hashValue
        return result
    }
}

public final class DeviceContactInstantMessagingProfileData: Equatable, Hashable {
    public let label: String
    public let service: String
    public let username: String
    
    public init(label: String, service: String, username: String) {
        self.label = label
        self.service = service
        self.username = username
    }
    
    public static func == (lhs: DeviceContactInstantMessagingProfileData, rhs: DeviceContactInstantMessagingProfileData) -> Bool {
        if lhs.label != rhs.label {
            return false
        }
        if lhs.service != rhs.service {
            return false
        }
        if lhs.username != rhs.username {
            return false
        }
        return true
    }
    
    public var hashValue: Int {
        var result = 0
        result = result &* 31 &+ self.label.hashValue
        result = result &* 31 &+ self.service.hashValue
        result = result &* 31 &+ self.username.hashValue
        return result
    }
}

public final class DeviceContactBasicData: Equatable {
    public let firstName: String
    public let lastName: String
    public let phoneNumbers: [DeviceContactPhoneNumberData]
    
    public init(firstName: String, lastName: String, phoneNumbers: [DeviceContactPhoneNumberData]) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumbers = phoneNumbers
    }
    
    public static func ==(lhs: DeviceContactBasicData, rhs: DeviceContactBasicData) -> Bool {
        if lhs.firstName != rhs.firstName {
            return false
        }
        if lhs.lastName != rhs.lastName {
            return false
        }
        if lhs.phoneNumbers != rhs.phoneNumbers {
            return false
        }
        return true
    }
}

public final class DeviceContactExtendedData: Equatable {
    public let basicData: DeviceContactBasicData
    
    public let middleName: String
    public let prefix: String
    public let suffix: String
    public let organization: String
    public let jobTitle: String
    public let department: String
    public let emailAddresses: [DeviceContactEmailAddressData]
    public let urls: [DeviceContactUrlData]
    public let addresses: [DeviceContactAddressData]
    public let birthdayDate: Date?
    public let socialProfiles: [DeviceContactSocialProfileData]
    public let instantMessagingProfiles: [DeviceContactInstantMessagingProfileData]
     
    public init(basicData: DeviceContactBasicData, middleName: String, prefix: String, suffix: String, organization: String, jobTitle: String, department: String, emailAddresses: [DeviceContactEmailAddressData], urls: [DeviceContactUrlData], addresses: [DeviceContactAddressData], birthdayDate: Date?, socialProfiles: [DeviceContactSocialProfileData], instantMessagingProfiles: [DeviceContactInstantMessagingProfileData]) {
        self.basicData = basicData
        self.middleName = middleName
        self.prefix = prefix
        self.suffix = suffix
        self.organization = organization
        self.jobTitle = jobTitle
        self.department = department
        self.emailAddresses = emailAddresses
        self.urls = urls
        self.addresses = addresses
        self.birthdayDate = birthdayDate
        self.socialProfiles = socialProfiles
        self.instantMessagingProfiles = instantMessagingProfiles
    }
    
    public static func ==(lhs: DeviceContactExtendedData, rhs: DeviceContactExtendedData) -> Bool {
        if lhs.basicData != rhs.basicData {
            return false
        }
        if lhs.middleName != rhs.middleName {
            return false
        }
        if lhs.prefix != rhs.prefix {
            return false
        }
        if lhs.suffix != rhs.suffix {
            return false
        }
        if lhs.organization != rhs.organization {
            return false
        }
        if lhs.jobTitle != rhs.jobTitle {
            return false
        }
        if lhs.department != rhs.department {
            return false
        }
        if lhs.emailAddresses != rhs.emailAddresses {
            return false
        }
        if lhs.urls != rhs.urls {
            return false
        }
        if lhs.addresses != rhs.addresses {
            return false
        }
        if lhs.birthdayDate != rhs.birthdayDate {
            return false
        }
        if lhs.socialProfiles != rhs.socialProfiles {
            return false
        }
        if lhs.instantMessagingProfiles != rhs.instantMessagingProfiles {
            return false
        }
        return true
    }
}

extension DeviceContactExtendedData {
    convenience init?(vcard: Data) {
        if #available(iOSApplicationExtension 9.0, *) {
            guard let contact = (try? CNContactVCardSerialization.contacts(with: vcard))?.first else {
                return nil
            }
            self.init(contact: contact)
        } else {
            return nil
        }
    }
    
    @available(iOSApplicationExtension 9.0, *)
    func asMutableCNContact() -> CNMutableContact {
        let contact = CNMutableContact()
        contact.givenName = self.basicData.firstName
        contact.familyName = self.basicData.lastName
        contact.namePrefix = self.prefix
        contact.nameSuffix = self.suffix
        contact.middleName = self.middleName
        contact.phoneNumbers = self.basicData.phoneNumbers.map { phoneNumber -> CNLabeledValue<CNPhoneNumber> in
            return CNLabeledValue<CNPhoneNumber>(label: phoneNumber.label, value: CNPhoneNumber(stringValue: phoneNumber.value))
        }
        contact.emailAddresses = self.emailAddresses.map { email -> CNLabeledValue<NSString> in
            CNLabeledValue<NSString>(label: email.label, value: email.value as NSString)
        }
        contact.urlAddresses = self.urls.map { url -> CNLabeledValue<NSString> in
            CNLabeledValue<NSString>(label: url.label, value: url.value as NSString)
        }
        contact.socialProfiles = self.socialProfiles.map({ profile -> CNLabeledValue<CNSocialProfile> in
            return CNLabeledValue<CNSocialProfile>(label: profile.label, value: CNSocialProfile(urlString: nil, username: profile.username, userIdentifier: nil, service: profile.service))
        })
        contact.instantMessageAddresses = self.instantMessagingProfiles.map({ profile -> CNLabeledValue<CNInstantMessageAddress> in
            return CNLabeledValue<CNInstantMessageAddress>(label: profile.label, value: CNInstantMessageAddress(username: profile.username, service: profile.service))
        })
        contact.postalAddresses = self.addresses.map({ address -> CNLabeledValue<CNPostalAddress> in
            let value = CNMutablePostalAddress()
            value.street = address.street1 + "\n" + address.street2
            value.state = address.state
            value.city = address.city
            value.country = address.country
            value.postalCode = address.postcode
            return CNLabeledValue<CNPostalAddress>(label: address.label, value: value)
        })
        return contact
    }
    
    func serializedVCard() -> String? {
        if #available(iOSApplicationExtension 9.0, *) {
            guard let data = try? CNContactVCardSerialization.data(with: [self.asMutableCNContact()]) else {
                return nil
            }
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
    
    @available(iOSApplicationExtension 9.0, *)
    convenience init(contact: CNContact) {
        var phoneNumbers: [DeviceContactPhoneNumberData] = []
        for number in contact.phoneNumbers {
            phoneNumbers.append(DeviceContactPhoneNumberData(label: number.label ?? "", value: number.value.stringValue))
        }
        var emailAddresses: [DeviceContactEmailAddressData] = []
        for email in contact.emailAddresses {
            emailAddresses.append(DeviceContactEmailAddressData(label: email.label ?? "", value: email.value as String))
        }
        
        var urls: [DeviceContactUrlData] = []
        for url in contact.urlAddresses {
            urls.append(DeviceContactUrlData(label: url.label ?? "", value: url.value as String))
        }
        
        var addresses: [DeviceContactAddressData] = []
        for address in contact.postalAddresses {
            addresses.append(DeviceContactAddressData(label: address.label ?? "", street1: address.value.street, street2: "", state: address.value.state, city: address.value.city, country: address.value.country, postcode: address.value.postalCode))
        }
        
        var birthdayDate: Date?
        if let birthday = contact.birthday {
            if let date = birthday.date {
                birthdayDate = date
            }
        }
        var socialProfiles: [DeviceContactSocialProfileData] = []
        for profile in contact.socialProfiles {
            socialProfiles.append(DeviceContactSocialProfileData(label: profile.label ?? "", service: profile.value.service, username: profile.value.username))
        }
        
        var instantMessagingProfiles: [DeviceContactInstantMessagingProfileData] = []
        for profile in contact.instantMessageAddresses {
            instantMessagingProfiles.append(DeviceContactInstantMessagingProfileData(label: profile.label ?? "", service: profile.value.service, username: profile.value.username))
        }
        
        let basicData = DeviceContactBasicData(firstName: contact.givenName, lastName: contact.familyName, phoneNumbers: phoneNumbers)
        self.init(basicData: basicData, middleName: contact.middleName, prefix: contact.namePrefix, suffix: contact.nameSuffix, organization: contact.organizationName, jobTitle: contact.jobTitle, department: contact.departmentName, emailAddresses: emailAddresses, urls: urls, addresses: addresses, birthdayDate: birthdayDate, socialProfiles: socialProfiles, instantMessagingProfiles: instantMessagingProfiles)
    }
}