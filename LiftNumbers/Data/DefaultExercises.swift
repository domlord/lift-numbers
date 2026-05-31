//
//  DefaultExercises.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 31/05/2026.
//

import Foundation

struct DefaultExercises {
    static let brands: [Brand] = [
        Brand(id: "atlantis", name: "Atlantis", machines: [
            // Chest - Machines
            Machine(id: "atlantis_chest_press", name: "Chest Press", muscleGroup: .chest, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_incline_press", name: "Incline Press", muscleGroup: .chest, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_pec_fly", name: "Pec Fly", muscleGroup: .chest, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            // Chest - Cables
            Machine(id: "atlantis_cable_fly", name: "Cable Fly", muscleGroup: .chest, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            Machine(id: "atlantis_cable_crossover", name: "Cable Crossover", muscleGroup: .chest, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            // Back - Machines
            Machine(id: "atlantis_seated_row", name: "Seated Row", muscleGroup: .back, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_lat_pulldown", name: "Lat Pulldown", muscleGroup: .back, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_back_extension", name: "Back Extension", muscleGroup: .back, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            // Back - Cables
            Machine(id: "atlantis_cable_row", name: "Cable Row", muscleGroup: .back, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            Machine(id: "atlantis_cable_pulldown", name: "Cable Pulldown", muscleGroup: .back, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            // Legs - Machines
            Machine(id: "atlantis_leg_press", name: "Leg Press", muscleGroup: .legs, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_leg_curl", name: "Leg Curl", muscleGroup: .legs, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_leg_extension", name: "Leg Extension", muscleGroup: .legs, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_calf_raise", name: "Calf Raise", muscleGroup: .legs, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_hip_abductor", name: "Hip Abductor", muscleGroup: .legs, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            // Shoulders - Machines
            Machine(id: "atlantis_shoulder_press", name: "Shoulder Press", muscleGroup: .shoulders, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_lateral_raise", name: "Lateral Raise", muscleGroup: .shoulders, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_reverse_fly", name: "Reverse Fly", muscleGroup: .shoulders, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            // Shoulders - Cables
            Machine(id: "atlantis_cable_lateral_raise", name: "Cable Lateral Raise", muscleGroup: .shoulders, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            Machine(id: "atlantis_cable_face_pull", name: "Cable Face Pull", muscleGroup: .shoulders, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            // Arms - Machines
            Machine(id: "atlantis_bicep_curl", name: "Bicep Curl", muscleGroup: .arms, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_tricep_press", name: "Tricep Press", muscleGroup: .arms, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            // Arms - Cables
            Machine(id: "atlantis_cable_bicep_curl", name: "Cable Bicep Curl", muscleGroup: .arms, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            Machine(id: "atlantis_cable_tricep_pushdown", name: "Cable Tricep Pushdown", muscleGroup: .arms, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            // Core
            Machine(id: "atlantis_ab_crunch", name: "Ab Crunch", muscleGroup: .core, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
            Machine(id: "atlantis_cable_crunch", name: "Cable Crunch", muscleGroup: .core, brandName: "Atlantis", exerciseType: .cable, isUniversal: false),
            // Cardio
            Machine(id: "atlantis_treadmill", name: "Treadmill", muscleGroup: .cardio, brandName: "Atlantis", exerciseType: .machine, isUniversal: false),
        ]),

        Brand(id: "precor", name: "Precor", machines: [
            // Chest - Machines
            Machine(id: "precor_chest_press", name: "Chest Press", muscleGroup: .chest, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_incline_press", name: "Incline Press", muscleGroup: .chest, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_pec_fly", name: "Pec Fly", muscleGroup: .chest, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            // Chest - Cables
            Machine(id: "precor_cable_fly", name: "Cable Fly", muscleGroup: .chest, brandName: "Precor", exerciseType: .cable, isUniversal: false),
            // Back - Machines
            Machine(id: "precor_seated_row", name: "Seated Row", muscleGroup: .back, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_lat_pulldown", name: "Lat Pulldown", muscleGroup: .back, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            // Back - Cables
            Machine(id: "precor_cable_row", name: "Cable Row", muscleGroup: .back, brandName: "Precor", exerciseType: .cable, isUniversal: false),
            Machine(id: "precor_cable_pulldown", name: "Cable Pulldown", muscleGroup: .back, brandName: "Precor", exerciseType: .cable, isUniversal: false),
            // Legs - Machines
            Machine(id: "precor_leg_press", name: "Leg Press", muscleGroup: .legs, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_leg_curl", name: "Leg Curl", muscleGroup: .legs, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_leg_extension", name: "Leg Extension", muscleGroup: .legs, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_calf_raise", name: "Calf Raise", muscleGroup: .legs, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            // Shoulders - Machines
            Machine(id: "precor_shoulder_press", name: "Shoulder Press", muscleGroup: .shoulders, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_lateral_raise", name: "Lateral Raise", muscleGroup: .shoulders, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            // Shoulders - Cables
            Machine(id: "precor_cable_face_pull", name: "Cable Face Pull", muscleGroup: .shoulders, brandName: "Precor", exerciseType: .cable, isUniversal: false),
            // Arms - Machines
            Machine(id: "precor_bicep_curl", name: "Bicep Curl", muscleGroup: .arms, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_tricep_extension", name: "Tricep Extension", muscleGroup: .arms, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            // Arms - Cables
            Machine(id: "precor_cable_bicep_curl", name: "Cable Bicep Curl", muscleGroup: .arms, brandName: "Precor", exerciseType: .cable, isUniversal: false),
            Machine(id: "precor_cable_tricep_pushdown", name: "Cable Tricep Pushdown", muscleGroup: .arms, brandName: "Precor", exerciseType: .cable, isUniversal: false),
            // Core
            Machine(id: "precor_ab_crunch", name: "Ab Crunch", muscleGroup: .core, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            // Cardio
            Machine(id: "precor_treadmill", name: "Treadmill", muscleGroup: .cardio, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_elliptical", name: "Elliptical", muscleGroup: .cardio, brandName: "Precor", exerciseType: .machine, isUniversal: false),
            Machine(id: "precor_bike", name: "Stationary Bike", muscleGroup: .cardio, brandName: "Precor", exerciseType: .machine, isUniversal: false),
        ]),

        Brand(id: "prime", name: "Prime", machines: [
            // Chest - Machines
            Machine(id: "prime_chest_press", name: "Chest Press", muscleGroup: .chest, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_incline_press", name: "Incline Press", muscleGroup: .chest, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_pec_fly", name: "Pec Fly", muscleGroup: .chest, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            // Chest - Cables
            Machine(id: "prime_cable_fly", name: "Cable Fly", muscleGroup: .chest, brandName: "Prime", exerciseType: .cable, isUniversal: false),
            // Back - Machines
            Machine(id: "prime_lat_pulldown", name: "Lat Pulldown", muscleGroup: .back, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_seated_row", name: "Seated Row", muscleGroup: .back, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            // Back - Cables
            Machine(id: "prime_cable_row", name: "Cable Row", muscleGroup: .back, brandName: "Prime", exerciseType: .cable, isUniversal: false),
            // Legs - Machines
            Machine(id: "prime_leg_press", name: "Leg Press", muscleGroup: .legs, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_leg_curl", name: "Leg Curl", muscleGroup: .legs, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_leg_extension", name: "Leg Extension", muscleGroup: .legs, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            // Shoulders - Machines
            Machine(id: "prime_shoulder_press", name: "Shoulder Press", muscleGroup: .shoulders, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_lateral_raise", name: "Lateral Raise", muscleGroup: .shoulders, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            // Shoulders - Cables
            Machine(id: "prime_cable_lateral_raise", name: "Cable Lateral Raise", muscleGroup: .shoulders, brandName: "Prime", exerciseType: .cable, isUniversal: false),
            Machine(id: "prime_cable_face_pull", name: "Cable Face Pull", muscleGroup: .shoulders, brandName: "Prime", exerciseType: .cable, isUniversal: false),
            // Arms - Machines
            Machine(id: "prime_bicep_curl", name: "Bicep Curl", muscleGroup: .arms, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_tricep_pushdown", name: "Tricep Pushdown", muscleGroup: .arms, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            // Arms - Cables
            Machine(id: "prime_cable_bicep_curl", name: "Cable Bicep Curl", muscleGroup: .arms, brandName: "Prime", exerciseType: .cable, isUniversal: false),
            Machine(id: "prime_cable_tricep_pushdown", name: "Cable Tricep Pushdown", muscleGroup: .arms, brandName: "Prime", exerciseType: .cable, isUniversal: false),
            // Core
            Machine(id: "prime_ab_crunch", name: "Ab Crunch", muscleGroup: .core, brandName: "Prime", exerciseType: .machine, isUniversal: false),
            Machine(id: "prime_cable_crunch", name: "Cable Crunch", muscleGroup: .core, brandName: "Prime", exerciseType: .cable, isUniversal: false),
        ]),

        Brand(id: "lifefitness", name: "Life Fitness", machines: [
            // Chest - Machines
            Machine(id: "lf_chest_press", name: "Chest Press", muscleGroup: .chest, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_incline_press", name: "Incline Press", muscleGroup: .chest, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_pec_fly", name: "Pec Fly", muscleGroup: .chest, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            // Chest - Cables
            Machine(id: "lf_cable_fly", name: "Cable Fly", muscleGroup: .chest, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            Machine(id: "lf_cable_crossover", name: "Cable Crossover", muscleGroup: .chest, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            // Back - Machines
            Machine(id: "lf_lat_pulldown", name: "Lat Pulldown", muscleGroup: .back, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_seated_row", name: "Seated Row", muscleGroup: .back, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            // Back - Cables
            Machine(id: "lf_cable_row", name: "Cable Row", muscleGroup: .back, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            Machine(id: "lf_cable_pulldown", name: "Cable Pulldown", muscleGroup: .back, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            // Legs - Machines
            Machine(id: "lf_leg_press", name: "Leg Press", muscleGroup: .legs, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_leg_curl", name: "Leg Curl", muscleGroup: .legs, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_leg_extension", name: "Leg Extension", muscleGroup: .legs, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_calf_raise", name: "Calf Raise", muscleGroup: .legs, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            // Shoulders - Machines
            Machine(id: "lf_shoulder_press", name: "Shoulder Press", muscleGroup: .shoulders, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_lateral_raise", name: "Lateral Raise", muscleGroup: .shoulders, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            // Shoulders - Cables
            Machine(id: "lf_cable_face_pull", name: "Cable Face Pull", muscleGroup: .shoulders, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            Machine(id: "lf_cable_lateral_raise", name: "Cable Lateral Raise", muscleGroup: .shoulders, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            // Arms - Machines
            Machine(id: "lf_bicep_curl", name: "Bicep Curl", muscleGroup: .arms, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_tricep_extension", name: "Tricep Extension", muscleGroup: .arms, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            // Arms - Cables
            Machine(id: "lf_cable_bicep_curl", name: "Cable Bicep Curl", muscleGroup: .arms, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            Machine(id: "lf_cable_tricep_pushdown", name: "Cable Tricep Pushdown", muscleGroup: .arms, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            // Core
            Machine(id: "lf_ab_crunch", name: "Ab Crunch", muscleGroup: .core, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_cable_crunch", name: "Cable Crunch", muscleGroup: .core, brandName: "Life Fitness", exerciseType: .cable, isUniversal: false),
            // Cardio
            Machine(id: "lf_treadmill", name: "Treadmill", muscleGroup: .cardio, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_elliptical", name: "Elliptical", muscleGroup: .cardio, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
            Machine(id: "lf_bike", name: "Stationary Bike", muscleGroup: .cardio, brandName: "Life Fitness", exerciseType: .machine, isUniversal: false),
        ]),

        Brand(id: "technogym", name: "Technogym", machines: [
            // Chest - Machines
            Machine(id: "tg_chest_press", name: "Chest Press", muscleGroup: .chest, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            Machine(id: "tg_incline_press", name: "Incline Press", muscleGroup: .chest, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            // Chest - Cables
            Machine(id: "tg_cable_fly", name: "Cable Fly", muscleGroup: .chest, brandName: "Technogym", exerciseType: .cable, isUniversal: false),
            // Back - Machines
            Machine(id: "tg_lat_pulldown", name: "Lat Pulldown", muscleGroup: .back, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            Machine(id: "tg_seated_row", name: "Seated Row", muscleGroup: .back, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            // Back - Cables
            Machine(id: "tg_cable_row", name: "Cable Row", muscleGroup: .back, brandName: "Technogym", exerciseType: .cable, isUniversal: false),
            // Legs - Machines
            Machine(id: "tg_leg_press", name: "Leg Press", muscleGroup: .legs, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            Machine(id: "tg_leg_curl", name: "Leg Curl", muscleGroup: .legs, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            Machine(id: "tg_leg_extension", name: "Leg Extension", muscleGroup: .legs, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            // Shoulders - Machines
            Machine(id: "tg_shoulder_press", name: "Shoulder Press", muscleGroup: .shoulders, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            // Shoulders - Cables
            Machine(id: "tg_cable_face_pull", name: "Cable Face Pull", muscleGroup: .shoulders, brandName: "Technogym", exerciseType: .cable, isUniversal: false),
            // Arms - Cables
            Machine(id: "tg_cable_bicep_curl", name: "Cable Bicep Curl", muscleGroup: .arms, brandName: "Technogym", exerciseType: .cable, isUniversal: false),
            Machine(id: "tg_cable_tricep_pushdown", name: "Cable Tricep Pushdown", muscleGroup: .arms, brandName: "Technogym", exerciseType: .cable, isUniversal: false),
            // Cardio
            Machine(id: "tg_treadmill", name: "Treadmill", muscleGroup: .cardio, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
            Machine(id: "tg_bike", name: "Stationary Bike", muscleGroup: .cardio, brandName: "Technogym", exerciseType: .machine, isUniversal: false),
        ]),

        // Free weights — universal, shown in every gym
        Brand(id: "freeweights", name: "Free Weights", machines: [
            // Chest
            Machine(id: "fw_barbell_bench_press", name: "Barbell Bench Press", muscleGroup: .chest, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_incline_barbell_press", name: "Incline Barbell Press", muscleGroup: .chest, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_dumbbell_bench_press", name: "Dumbbell Bench Press", muscleGroup: .chest, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_incline_dumbbell_press", name: "Incline Dumbbell Press", muscleGroup: .chest, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_dumbbell_fly", name: "Dumbbell Fly", muscleGroup: .chest, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            // Back
            Machine(id: "fw_barbell_row", name: "Barbell Row", muscleGroup: .back, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_dumbbell_row", name: "Dumbbell Row", muscleGroup: .back, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_deadlift", name: "Deadlift", muscleGroup: .back, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_pullup", name: "Pull Up", muscleGroup: .back, brandName: "Free Weights", exerciseType: .bodyweight, isUniversal: true),
            // Legs
            Machine(id: "fw_barbell_squat", name: "Barbell Squat", muscleGroup: .legs, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_romanian_deadlift", name: "Romanian Deadlift", muscleGroup: .legs, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_dumbbell_lunge", name: "Dumbbell Lunge", muscleGroup: .legs, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_goblet_squat", name: "Goblet Squat", muscleGroup: .legs, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            // Shoulders
            Machine(id: "fw_barbell_overhead_press", name: "Barbell Overhead Press", muscleGroup: .shoulders, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_dumbbell_shoulder_press", name: "Dumbbell Shoulder Press", muscleGroup: .shoulders, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_dumbbell_lateral_raise", name: "Dumbbell Lateral Raise", muscleGroup: .shoulders, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_dumbbell_front_raise", name: "Dumbbell Front Raise", muscleGroup: .shoulders, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            // Arms
            Machine(id: "fw_barbell_curl", name: "Barbell Curl", muscleGroup: .arms, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_dumbbell_curl", name: "Dumbbell Curl", muscleGroup: .arms, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_hammer_curl", name: "Hammer Curl", muscleGroup: .arms, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_skull_crusher", name: "Skull Crusher", muscleGroup: .arms, brandName: "Free Weights", exerciseType: .barbell, isUniversal: true),
            Machine(id: "fw_tricep_kickback", name: "Tricep Kickback", muscleGroup: .arms, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            // Core
            Machine(id: "fw_plank", name: "Plank", muscleGroup: .core, brandName: "Free Weights", exerciseType: .bodyweight, isUniversal: true),
            Machine(id: "fw_crunch", name: "Crunch", muscleGroup: .core, brandName: "Free Weights", exerciseType: .bodyweight, isUniversal: true),
            Machine(id: "fw_russian_twist", name: "Russian Twist", muscleGroup: .core, brandName: "Free Weights", exerciseType: .dumbbell, isUniversal: true),
            Machine(id: "fw_leg_raise", name: "Leg Raise", muscleGroup: .core, brandName: "Free Weights", exerciseType: .bodyweight, isUniversal: true),
        ]),

        Brand(id: "custom", name: "Custom", machines: [])
    ]

    // All universal exercises — always shown in every gym
    static var universalExercises: [Machine] {
        return brands.flatMap { $0.machines }.filter { $0.isUniversal }
    }

    // Get all machines for a specific muscle group across all brands
    static func machines(for muscleGroup: MuscleGroup) -> [Machine] {
        return brands.flatMap { $0.machines }.filter { $0.muscleGroup == muscleGroup }
    }

    // Get universal exercises for a specific muscle group
    static func universalExercises(for muscleGroup: MuscleGroup) -> [Machine] {
        return universalExercises.filter { $0.muscleGroup == muscleGroup }
    }
}
