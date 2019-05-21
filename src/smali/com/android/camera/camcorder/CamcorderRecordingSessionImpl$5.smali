.class final Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$5;
.super Ljava/lang/Object;
.source "CamcorderRecordingSessionImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Ljava/lang/Void;",
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
        ">;",
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 226
    check-cast p2, Lcom/google/common/base/Optional;

    return-object p2
.end method
