.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$1;
.super Ljava/lang/Object;
.source "StateRecordingVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateRecordingVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$1;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$1;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$000(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$1;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$100(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/util/time/MillisecondClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/util/time/MillisecondClock;->getTimeMs()J

    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$1;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$000(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->getStartTimeUtcMs()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 65
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$1;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$200(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->setRecordingTime(J)V

    .line 67
    :cond_0
    return-void
.end method
