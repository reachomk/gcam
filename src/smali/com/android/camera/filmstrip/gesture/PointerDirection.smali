.class public final Lcom/android/camera/filmstrip/gesture/PointerDirection;
.super Ljava/lang/Enum;
.source "PointerDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/filmstrip/gesture/PointerDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TJMASRKELP6ABQGDTKMST35E926ISJ5CDQ6IRRE7C______:[I

.field private static enum DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

.field public static final enum LEFT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

.field private static enum NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

.field public static final enum RIGHT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

.field private static enum UP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10
    sput v3, Lcom/android/camera/filmstrip/gesture/PointerDirection;->RIGHT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    .line 14
    sput v4, Lcom/android/camera/filmstrip/gesture/PointerDirection;->UP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    .line 18
    sput v5, Lcom/android/camera/filmstrip/gesture/PointerDirection;->LEFT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    .line 22
    sput v6, Lcom/android/camera/filmstrip/gesture/PointerDirection;->DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    .line 26
    sput v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    .line 6
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/filmstrip/gesture/PointerDirection;->RIGHT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/filmstrip/gesture/PointerDirection;->UP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/filmstrip/gesture/PointerDirection;->LEFT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    aput v1, v0, v4

    sget v1, Lcom/android/camera/filmstrip/gesture/PointerDirection;->DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    aput v1, v0, v5

    sget v1, Lcom/android/camera/filmstrip/gesture/PointerDirection;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    aput v1, v0, v6

    sput-object v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TJMASRKELP6ABQGDTKMST35E926ISJ5CDQ6IRRE7C______:[I

    return-void
.end method

.method public static getDirectionFromDxDy$5134CAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BR7CLPN8TBICKNL0RR9DPQ6ASI4D5P6AORKD5NMSEO_(FF)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    cmpl-float v0, p0, v2

    if-nez v0, :cond_0

    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 34
    sget v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    .line 46
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 37
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    .line 38
    sget v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->RIGHT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    goto :goto_0

    .line 40
    :cond_1
    sget v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->LEFT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    goto :goto_0

    .line 43
    :cond_2
    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    .line 44
    sget v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    goto :goto_0

    .line 46
    :cond_3
    sget v0, Lcom/android/camera/filmstrip/gesture/PointerDirection;->UP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FCTIN6T3LE9IIUK3FD5N78PBI8HKN4PB3EHKMURHR:I

    goto :goto_0
.end method
