.class final enum Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;
.super Ljava/lang/Enum;
.source "Video2OpenedCamcorderDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

.field public static final enum CLOSED:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

.field public static final enum CREATING_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

.field public static final enum NO_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

.field public static final enum SESSION_ACTIVE:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    const-string v1, "NO_SESSION"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->NO_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 132
    new-instance v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    const-string v1, "CREATING_SESSION"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CREATING_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 136
    new-instance v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    const-string v1, "SESSION_ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->SESSION_ACTIVE:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 139
    new-instance v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CLOSED:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    sget-object v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->NO_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CREATING_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->SESSION_ACTIVE:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CLOSED:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->$VALUES:[Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->$VALUES:[Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    invoke-virtual {v0}, [Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    return-object v0
.end method
