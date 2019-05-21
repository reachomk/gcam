.class final Lcom/android/camera/module/capture/PhotoModeFocusController$2;
.super Ljava/lang/Object;
.source "PhotoModeFocusController.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/PhotoModeFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/PhotoModeFocusController;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFingerUp()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$400(Lcom/android/camera/module/capture/PhotoModeFocusController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$200(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->showFocusLockCancel()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$200(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->showFocusLockConfirm()V

    goto :goto_0
.end method

.method public final onGestureCancel()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$200(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    .line 160
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$402(Lcom/android/camera/module/capture/PhotoModeFocusController;Z)Z

    .line 161
    return-void
.end method

.method public final onLongPress(Landroid/graphics/PointF;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$402(Lcom/android/camera/module/capture/PhotoModeFocusController;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    .line 127
    invoke-static {v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$200(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusController;->showFocusLockHoldAt(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 129
    iget-object v2, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v2, v1, v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$300(Lcom/android/camera/module/capture/PhotoModeFocusController;Landroid/graphics/Point;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 130
    new-instance v1, Lcom/android/camera/module/capture/PhotoModeFocusController$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/PhotoModeFocusController$2$1;-><init>(Lcom/android/camera/module/capture/PhotoModeFocusController$2;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 146
    return-void
.end method
