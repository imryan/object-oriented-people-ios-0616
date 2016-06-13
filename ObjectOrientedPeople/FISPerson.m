//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Ryan Cohen on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (readwrite, strong) NSString *name;
@property (readwrite, strong) NSMutableArray *skills;

@property (readwrite) NSUInteger ageInYears;
@property (readwrite) NSUInteger heightInInches;

@end

@implementation FISPerson

#pragma mark - Initializers

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self = [self initWithName:@"Ryan" ageInYears:19 heightInInches:68];
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears {
    self = [super init];
    
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        
        self = [self initWithName:name ageInYears:ageInYears heightInInches:67];
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    self = [super init];
    
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [NSMutableArray new];
    }
    
    return self;
}

#pragma mark - Methods

- (NSString *)celebrateBirthday {
    self.ageInYears++;
    NSString *birthday = [NSString stringWithFormat:@"Happy %lu%@ birthday, %@!!!", self.ageInYears, [self ordinalForInteger:self.ageInYears], self.name];
    
    return birthday.uppercaseString;
}

- (void)learnSkillBash {
    if ([self.skills containsObject:@"bash"]) {
        return;
    }
    
    [self.skills addObject:@"bash"];
}

- (void)learnSkillXcode {
    if ([self.skills containsObject:@"Xcode"]) {
        return;
    }
    
    [self.skills addObject:@"Xcode"];
}

- (void)learnSkillObjectiveC {
    if ([self.skills containsObject:@"Objective-C"]) {
        return;
    }
    
    [self.skills addObject:@"Objective-C"];
}

- (void)learnSkillObjectOrientedProgramming {
    if ([self.skills containsObject:@"Object-Oriented Programming"]) {
        return;
    }
    
    [self.skills addObject:@"Object-Oriented Programming"];
}

- (void)learnSkillInterfaceBuilder {
    if ([self.skills containsObject:@"Interface Builder"]) {
        return;
    }
    
    [self.skills addObject:@"Interface Builder"];
}

- (BOOL)isQualifiedTutor {
    return (self.skills.count >= 4) ? YES : NO;
}

#pragma mark - Helpers

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
        
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
        
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    
    return ordinal;
}

@end
