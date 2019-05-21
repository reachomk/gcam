.class public final Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;
.super Ljava/lang/Enum;
.source "DirtyLensPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LensCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM8TJ9CDIIUP39E9Q7IR35DPPIUH39E9Q7IJ35DPPL0R3LCTKMS92CCLN76GRFDPI6IT39DTN3M___:[I

.field public static final enum CLEAN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

.field public static final enum DIRTY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

.field public static final enum UNKNOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 35
    sput v3, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->DIRTY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    .line 36
    sput v4, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->CLEAN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    .line 37
    sput v0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->UNKNOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    .line 34
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->DIRTY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->CLEAN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->UNKNOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM8TJ9CDIIUP39E9Q7IR35DPPIUH39E9Q7IJ35DPPL0R3LCTKMS92CCLN76GRFDPI6IT39DTN3M___:[I

    return-void
.end method
