.class final enum Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;
.super Ljava/lang/Enum;
.source "CameraDeviceOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceOpener$ResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

.field public static final enum CONNECTED:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

.field public static final enum ERROR:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

.field public static final enum ERROR_TIMEOUT:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

.field public static final enum RETRY:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    new-instance v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->CONNECTED:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    .line 351
    new-instance v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->RETRY:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    .line 352
    new-instance v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->ERROR:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    .line 353
    new-instance v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    const-string v1, "ERROR_TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->ERROR_TIMEOUT:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    .line 349
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->CONNECTED:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->RETRY:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->ERROR:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->ERROR_TIMEOUT:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->$VALUES:[Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->$VALUES:[Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    invoke-virtual {v0}, [Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    return-object v0
.end method
