.class public final Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;
.super Ljava/lang/Object;
.source "ReprocessingImageWriterModule.java"


# instance fields
.field private final imageWriterCreator:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;

.field private final maxImageCount:I


# direct methods
.method public constructor <init>(ILcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;->maxImageCount:I

    .line 39
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;->imageWriterCreator:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;

    .line 40
    return-void
.end method


# virtual methods
.method public final provideReprocessingImageWriter(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;",
            ")",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule$1;-><init>()V

    .line 49
    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;->imageWriterCreator:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;->maxImageCount:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->createCopyingManagedImageWriter(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;I)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    move-result-object v0

    return-object v0
.end method
