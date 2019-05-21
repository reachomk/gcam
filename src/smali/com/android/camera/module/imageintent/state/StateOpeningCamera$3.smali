.class final Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateOpeningCamera;
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
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 15

    .prologue
    .line 107
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;

    .line 1110
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v7

    .line 1111
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$000(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-interface {v7}, Lcom/android/camera/one/OneCamera;->close()V

    .line 1114
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1115
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 1114
    :goto_0
    return-object v0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1119
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$200(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v14

    .line 1121
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$900(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1122
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;

    invoke-direct {v1, p0, v14}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3$1;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;Lcom/google/android/apps/camera/async/Lifetime;)V

    .line 1123
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1137
    new-instance v0, Lcom/android/camera/module/capture/PhotoModeFocusController;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1138
    invoke-static {v1}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1000(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v1}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getCaptureLayoutHelper()Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1139
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1100(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v2}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/FocusPointNormalizer;

    iget-object v4, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1140
    invoke-static {v4}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1200(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v4}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/module/FocusPointNormalizer;-><init>(Lcom/android/camera/burst/OrientationLockController;)V

    iget-object v4, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1141
    invoke-static {v4}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v4}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getEvCompViewController()Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1142
    invoke-static {v5}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1400(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v5}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewTapListener()Lcom/android/camera/ui/wirers/PreviewTapListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1143
    invoke-static {v6}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1500(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v6}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewLongPressListener()Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1145
    invoke-static {v8}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1146
    invoke-static {v9}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1600(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v9

    .line 1147
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/module/capture/PhotoModeFocusController;-><init>(Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/module/FocusPointNormalizer;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/android/camera/one/AutoFocusTrigger;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/stats/UsageStatistics;)V

    .line 1148
    invoke-virtual {v14, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1150
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1153
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1700(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1154
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1800(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v9

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1155
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1156
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1900(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/util/Size;

    move-result-object v11

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1157
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$2000(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v12

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1158
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$1600(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v13

    .line 1151
    invoke-static/range {v7 .. v14}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->create(Lcom/android/camera/one/OneCamera;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v1

    .line 1160
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    iget-object v3, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    .line 1161
    invoke-static {v3}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;)V

    goto/16 :goto_0
.end method
