.class final Lcom/android/camera/ui/CaptureAnimationOverlay$State;
.super Ljava/lang/Enum;
.source "CaptureAnimationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/CaptureAnimationOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5O78TBICL0MSQBDC5Q6IRRE9TR6ASJCC5SI8KRKC5Q6AEO_:[I

.field public static final enum FLASH_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

.field public static final enum NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

.field public static final enum SCRIM_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    sput v3, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    .line 38
    sput v4, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->FLASH_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    .line 39
    sput v0, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->SCRIM_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    .line 36
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->FLASH_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->SCRIM_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5O78TBICL0MSQBDC5Q6IRRE9TR6ASJCC5SI8KRKC5Q6AEO_:[I

    return-void
.end method
