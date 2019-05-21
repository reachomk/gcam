.class final enum Lcom/android/camera/camcorder/CamcorderManagerImpl$State;
.super Ljava/lang/Enum;
.source "CamcorderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camcorder/CamcorderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/CamcorderManagerImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

.field public static final enum CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

.field public static final enum OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

.field public static final enum READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 130
    new-instance v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 135
    new-instance v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    const-string v1, "OPENING_DEVICE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->OPENING_DEVICE:Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->$VALUES:[Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/camcorder/CamcorderManagerImpl$State;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->$VALUES:[Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/CamcorderManagerImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/CamcorderManagerImpl$State;

    return-object v0
.end method
