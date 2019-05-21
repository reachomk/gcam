.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReadyForCapture;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 11

    .prologue
    .line 146
    check-cast p1, Lcom/android/camera/module/videointent/event/Events$EventRecordingStarted;

    .line 1149
    new-instance v0, Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1151
    invoke-virtual {p1}, Lcom/android/camera/module/videointent/event/Events$EventRecordingStarted;->getCamcorderRecordingSession()Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1152
    invoke-static {v3}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$400(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/module/video2/Video2Sound;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1153
    invoke-static {v4}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$100(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1154
    invoke-static {v5}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1155
    invoke-static {v6}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$500(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/module/video2/Video2OrientationCalculator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1156
    invoke-static {v7}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1157
    invoke-static {v8}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$700(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1158
    invoke-static {v9}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$800(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1159
    invoke-static {v10}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$900(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/android/camera/camcorder/CamcorderRecordingSession;Lcom/android/camera/module/video2/Video2Sound;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/ui/focus/FocusController;Lcom/google/android/apps/camera/async/ConcurrentState;)V

    .line 146
    return-object v0
.end method
