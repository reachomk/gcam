.class final enum Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;
.super Ljava/lang/Enum;
.source "CamcorderDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camcorder/CamcorderDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

.field public static final enum CLOSED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

.field public static final enum CREATING_SESSION:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

.field public static final enum READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

.field public static final enum SESSION_OPENED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 124
    new-instance v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 130
    new-instance v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    const-string v1, "CREATING_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CREATING_SESSION:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 136
    new-instance v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    const-string v1, "SESSION_OPENED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->SESSION_OPENED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CREATING_SESSION:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->SESSION_OPENED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->$VALUES:[Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->$VALUES:[Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    return-object v0
.end method
