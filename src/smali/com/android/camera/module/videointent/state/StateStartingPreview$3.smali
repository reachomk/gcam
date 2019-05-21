.class final Lcom/android/camera/module/videointent/state/StateStartingPreview$3;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateStartingPreview;
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
.field final synthetic this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 11

    .prologue
    .line 117
    check-cast p1, Lcom/android/camera/module/videointent/event/Events$EventOnStartPreviewSucceeded;

    .line 1121
    invoke-virtual {p1}, Lcom/android/camera/module/videointent/event/Events$EventOnStartPreviewSucceeded;->getCamcorderCaptureSession()Lcom/android/camera/camcorder/CamcorderCaptureSession;

    move-result-object v6

    .line 1122
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$400(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 1123
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateStartingPreview$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$3$1;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview$3;)V

    .line 1124
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1132
    new-instance v5, Lcom/google/android/apps/camera/async/DelayedExecutor;

    const-string v0, "StSrtPrev"

    const/16 v1, 0xfa

    invoke-direct {v5, v0, v1}, Lcom/google/android/apps/camera/async/DelayedExecutor;-><init>(Ljava/lang/String;I)V

    .line 1134
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$600(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 1135
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1136
    invoke-static {v1}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$500(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/NotificationManager;

    .line 1138
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1140
    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$100(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1141
    invoke-static {v3}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$700(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    new-instance v4, Lcom/android/camera/module/video2/Video2Sound;

    iget-object v8, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1143
    invoke-static {v8}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$800(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v8

    check-cast v8, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v8}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAndroidServices()Lcom/google/android/apps/camera/inject/app/AndroidServices;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v9

    iget-object v8, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1144
    invoke-static {v8}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$900(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v8

    check-cast v8, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v8}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v8

    invoke-direct {v4, v9, v8, v7}, Lcom/android/camera/module/video2/Video2Sound;-><init>(Landroid/media/AudioManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/app/NotificationManager;)V

    new-instance v7, Lcom/google/android/apps/camera/util/time/AnimationClock;

    invoke-direct {v7}, Lcom/google/android/apps/camera/util/time/AnimationClock;-><init>()V

    iget-object v7, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1149
    invoke-static {v7}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$000(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1150
    invoke-static {v8}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$1000(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1151
    invoke-static {v9}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$1100(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1152
    invoke-static {v10}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$1200(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/module/video2/Video2OrientationCalculator;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/module/video2/Video2Sound;Ljava/util/concurrent/Executor;Lcom/android/camera/camcorder/CamcorderCaptureSession;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/module/video2/Video2OrientationCalculator;)V

    .line 117
    return-object v0
.end method
