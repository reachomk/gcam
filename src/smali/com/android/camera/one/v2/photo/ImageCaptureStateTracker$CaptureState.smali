.class public final enum Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;
.super Ljava/lang/Enum;
.source "ImageCaptureStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

.field public static final enum IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

.field public static final enum RUNNING:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    .line 12
    new-instance v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->RUNNING:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    sget-object v1, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->RUNNING:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->$VALUES:[Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->$VALUES:[Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    return-object v0
.end method
