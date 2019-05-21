.class final Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedImage"
.end annotation


# instance fields
.field public final imageHandle:Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampNs:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;->imageHandle:Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    .line 73
    iput-wide p2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;->timestampNs:J

    .line 74
    return-void
.end method

.method public static create(Lcom/google/android/libraries/smartburst/concurrency/Result;JLjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;J",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage$1;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage$1;-><init>(J)V

    invoke-virtual {p0, p3, v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method
