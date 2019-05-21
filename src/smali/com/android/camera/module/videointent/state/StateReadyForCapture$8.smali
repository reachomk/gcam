.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;
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
    .line 263
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 4

    .prologue
    .line 263
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;

    .line 1266
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;->getTapPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 1267
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1268
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$800(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1271
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$2200(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCaptureLayoutHelper()Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 1272
    new-instance v3, Lcom/android/camera/module/FocusPointNormalizer;

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1273
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$2300(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/camera/module/FocusPointNormalizer;-><init>(Lcom/android/camera/burst/OrientationLockController;)V

    .line 1274
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    .line 1275
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    .line 1274
    invoke-virtual {v3, v1, v2, v0}, Lcom/android/camera/module/FocusPointNormalizer;->normalize(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/android/camera/one/OneCamera$Facing;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v1}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$700(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/apps/camera/aaa/FocusPoint;->at(Landroid/graphics/PointF;)Lcom/google/android/apps/camera/aaa/FocusPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1278
    :cond_1
    const/4 v0, 0x0

    .line 263
    return-object v0
.end method
