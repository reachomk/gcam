.class final Lcom/android/camera/device/CameraDeviceState$State;
.super Ljava/lang/Enum;
.source "CameraDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/device/CameraDeviceState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6ATJ9CDIIUGR1DLIN4OA4CLR6IOR5ADQ62T354H9N8OBKCKTG____:[I

.field public static final enum CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

.field public static final enum DISCONNECTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

.field public static final enum ERROR$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

.field public static final enum OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

.field public static final enum OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    sput v3, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 38
    sput v4, Lcom/android/camera/device/CameraDeviceState$State;->OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 39
    sput v5, Lcom/android/camera/device/CameraDeviceState$State;->DISCONNECTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 40
    sput v6, Lcom/android/camera/device/CameraDeviceState$State;->ERROR$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 41
    sput v0, Lcom/android/camera/device/CameraDeviceState$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 36
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/device/CameraDeviceState$State;->OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/device/CameraDeviceState$State;->DISCONNECTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    aput v1, v0, v4

    sget v1, Lcom/android/camera/device/CameraDeviceState$State;->ERROR$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    aput v1, v0, v5

    sget v1, Lcom/android/camera/device/CameraDeviceState$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    aput v1, v0, v6

    sput-object v0, Lcom/android/camera/device/CameraDeviceState$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6ATJ9CDIIUGR1DLIN4OA4CLR6IOR5ADQ62T354H9N8OBKCKTG____:[I

    return-void
.end method
