.class final Lcom/android/camera/ui/ProgressOverlay$State;
.super Ljava/lang/Enum;
.source "ProgressOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ProgressOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/ProgressOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U94ADQ62T357C______:[I

.field public static final enum FADING_IN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

.field public static final enum FADING_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

.field public static final enum IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

.field public static final enum PROGRESSING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    sput v3, Lcom/android/camera/ui/ProgressOverlay$State;->IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    .line 38
    sput v4, Lcom/android/camera/ui/ProgressOverlay$State;->FADING_IN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    .line 39
    sput v5, Lcom/android/camera/ui/ProgressOverlay$State;->FADING_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    .line 40
    sput v0, Lcom/android/camera/ui/ProgressOverlay$State;->PROGRESSING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    .line 36
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/ui/ProgressOverlay$State;->IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/ui/ProgressOverlay$State;->FADING_IN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/ui/ProgressOverlay$State;->FADING_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    aput v1, v0, v4

    sget v1, Lcom/android/camera/ui/ProgressOverlay$State;->PROGRESSING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    aput v1, v0, v5

    sput-object v0, Lcom/android/camera/ui/ProgressOverlay$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U94ADQ62T357C______:[I

    return-void
.end method
