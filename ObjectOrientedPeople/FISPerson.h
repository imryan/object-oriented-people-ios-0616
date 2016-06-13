//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Ryan Cohen on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (readonly, strong) NSString *name;
@property (readonly, strong) NSMutableArray *skills;

@property (readonly) NSUInteger ageInYears;
@property (readonly) NSUInteger heightInInches;

- (instancetype)init;
- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears;
- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches;

- (NSString *)celebrateBirthday;

- (void)learnSkillBash;
- (void)learnSkillXcode;
- (void)learnSkillObjectiveC;
- (void)learnSkillObjectOrientedProgramming;
- (void)learnSkillInterfaceBuilder;

- (BOOL)isQualifiedTutor;

@end
