.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 4

    .prologue
    .line 166
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;

    .line 1169
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;->getTapPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 1170
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1400(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    .line 1171
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1400(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1500(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1174
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1600(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCaptureLayoutHelper()Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 1175
    new-instance v3, Lcom/android/camera/module/FocusPointNormalizer;

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    .line 1176
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1700(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/camera/module/FocusPointNormalizer;-><init>(Lcom/android/camera/burst/OrientationLockController;)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    .line 1178
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1400(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    .line 1177
    invoke-virtual {v3, v1, v2, v0}, Lcom/android/camera/module/FocusPointNormalizer;->normalize(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/android/camera/one/OneCamera$Facing;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$6;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v1}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$1800(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/apps/camera/aaa/FocusPoint;->at(Landroid/graphics/PointF;)Lcom/google/android/apps/camera/aaa/FocusPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1181
    :cond_1
    const/4 v0, 0x0

    .line 166
    return-object v0
.end method
