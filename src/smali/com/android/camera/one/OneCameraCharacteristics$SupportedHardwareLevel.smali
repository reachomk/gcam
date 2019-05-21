.class public final Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
.super Ljava/lang/Enum;
.source "OneCameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCameraCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedHardwareLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA3D1GN4OB3EHIN4QBJEHKM6SP4ADQN0S3FE9Q6AP28C5P68TR1E9IKOPBMCLM3M___:[I

.field public static final enum FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

.field public static final enum LEGACY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

.field public static final enum LIMITED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21
    sput v3, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    .line 22
    sput v4, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LIMITED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    .line 23
    sput v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    .line 20
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LIMITED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA3D1GN4OB3EHIN4QBJEHKM6SP4ADQN0S3FE9Q6AP28C5P68TR1E9IKOPBMCLM3M___:[I

    return-void
.end method
