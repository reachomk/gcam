.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;
.super Ljava/lang/Object;
.source "StateRecordingVideo.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateRecordingVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 110
    .line 1113
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$500(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderDevice;->close()V

    .line 1114
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$900(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3$1;-><init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1122
    new-instance v0, Lcom/android/camera/module/videointent/state/StateForegroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    .line 1123
    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1000(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/videointent/state/StateForegroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 110
    return-object v0
.end method
