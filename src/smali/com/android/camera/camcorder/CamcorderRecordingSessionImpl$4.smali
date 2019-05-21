.class final Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$4;
.super Ljava/lang/Object;
.source "CamcorderRecordingSessionImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


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
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    .line 1220
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$4;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionInternalCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionInternalCallback;->onRecordingSessionClosed()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 214
    return-object v0
.end method
