.class final Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule$1;
.super Ljava/lang/Object;
.source "ReprocessingImageWriterModule.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;->provideReprocessingImageWriter(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1054
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 51
    return-object v0
.end method
