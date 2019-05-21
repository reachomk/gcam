.class final enum Lcom/android/camera/session/CaptureSessionImpl$State;
.super Ljava/lang/Enum;
.source "CaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/CaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/session/CaptureSessionImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/session/CaptureSessionImpl$State;

.field public static final enum FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

.field public static final enum FINISHING:Lcom/android/camera/session/CaptureSessionImpl$State;

.field public static final enum NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

.field public static final enum STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/android/camera/session/CaptureSessionImpl$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 59
    new-instance v0, Lcom/android/camera/session/CaptureSessionImpl$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/session/CaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 61
    new-instance v0, Lcom/android/camera/session/CaptureSessionImpl$State;

    const-string v1, "FINISHING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/session/CaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHING:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 63
    new-instance v0, Lcom/android/camera/session/CaptureSessionImpl$State;

    const-string v1, "FINISHED_CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/session/CaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHING:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->$VALUES:[Lcom/android/camera/session/CaptureSessionImpl$State;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/session/CaptureSessionImpl$State;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->$VALUES:[Lcom/android/camera/session/CaptureSessionImpl$State;

    invoke-virtual {v0}, [Lcom/android/camera/session/CaptureSessionImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/session/CaptureSessionImpl$State;

    return-object v0
.end method
