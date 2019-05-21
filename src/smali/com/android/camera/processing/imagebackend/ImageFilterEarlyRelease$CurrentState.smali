.class final Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;
.super Ljava/lang/Enum;
.source "ImageFilterEarlyRelease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CurrentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1F95MM2PR58PKMOT35E92M2SJCF596AR35C5PMA923ELP74PBEEH9N8OBKCKTG____:[I

.field public static final enum CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

.field public static final enum READY_FOR_SUBMISSION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

.field public static final enum WAITING_FOR_START$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 40
    sput v3, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->WAITING_FOR_START$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 41
    sput v4, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->READY_FOR_SUBMISSION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 42
    sput v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 39
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->WAITING_FOR_START$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->READY_FOR_SUBMISSION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1F95MM2PR58PKMOT35E92M2SJCF596AR35C5PMA923ELP74PBEEH9N8OBKCKTG____:[I

    return-void
.end method
