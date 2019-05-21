.class public Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;
.super Ljava/lang/Object;
.source "ImageToProcess.java"


# instance fields
.field public final crop:Landroid/graphics/Rect;

.field public final metadata:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field public final proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

.field public final rotation:Lcom/google/android/apps/camera/util/layout/Orientation;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 36
    iput-object p4, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 37
    return-void
.end method
