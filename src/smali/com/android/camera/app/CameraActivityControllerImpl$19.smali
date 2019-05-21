.class final Lcom/android/camera/app/CameraActivityControllerImpl$19;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;->indicateCapture(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

.field private synthetic val$indicator:Landroid/graphics/Bitmap;

.field private synthetic val$rotationDegrees:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iput-object p2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->val$indicator:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->val$rotationDegrees:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2693
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$300(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/module/ModuleController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/ModuleController;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    .line 2692
    invoke-interface {v0, v1}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;)V

    .line 2694
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->val$indicator:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->val$rotationDegrees:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 2695
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2696
    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/cache/SingleKeyCache;

    move-result-object v0

    new-instance v1, Lcom/android/camera/storage/cache/OrientationBitmap;

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->val$indicator:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$19;->val$rotationDegrees:I

    .line 2697
    invoke-static {v3}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/storage/cache/OrientationBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 2696
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/cache/SingleKeyCache;->update(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2698
    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$19$1;

    invoke-direct {v1}, Lcom/android/camera/app/CameraActivityControllerImpl$19$1;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 2711
    return-void
.end method
