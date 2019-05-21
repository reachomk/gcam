.class public final Lcom/android/camera/session/StackedCaptureSession$StackItemType;
.super Ljava/lang/Enum;
.source "StackedCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/StackedCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StackItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/session/StackedCaptureSession$StackItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJEHGM6QR5CH1M2S3KELP6AKR5EDPMIRRE4H9N8OB3DD4N8PBDAHSN0P9R:[I

.field public static final enum COVER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

.field public static final enum FRAME$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 41
    sput v3, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->COVER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    .line 42
    sput v0, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->FRAME$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    .line 40
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->COVER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->FRAME$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    aput v1, v0, v3

    sput-object v0, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJEHGM6QR5CH1M2S3KELP6AKR5EDPMIRRE4H9N8OB3DD4N8PBDAHSN0P9R:[I

    return-void
.end method
