.class final Lcom/android/camera/module/capture/PhotoModeFocusController$1;
.super Ljava/lang/Object;
.source "PhotoModeFocusController.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/PhotoModeFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/PhotoModeFocusController;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$1;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTap(Landroid/graphics/PointF;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onSingleTapUpPreview location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$1;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v1}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$100(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$1;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    .line 110
    invoke-static {v1}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$100(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    .line 115
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    .line 116
    iget-object v3, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$1;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v3}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$200(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$1;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$300(Lcom/android/camera/module/capture/PhotoModeFocusController;Landroid/graphics/Point;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method
