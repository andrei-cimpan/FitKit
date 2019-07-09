package com.example.fit_kit

import com.google.android.gms.fitness.data.DataType
import com.google.android.gms.fitness.data.HealthDataTypes

@Throws
fun String.fromDartType(): DataType {
    return when (this) {
        "heart_rate" -> DataType.TYPE_HEART_RATE_BPM
        "step_count" -> DataType.TYPE_STEP_COUNT_DELTA
        "height" -> DataType.TYPE_HEIGHT
        "weight" -> DataType.TYPE_WEIGHT
        "blood_pressure_systolic" -> HealthDataTypes.TYPE_BLOOD_PRESSURE
        "blood_pressure_diastolic" -> HealthDataTypes.TYPE_BLOOD_PRESSURE
        else -> throw Exception("type $this is not supported")
    }
}

