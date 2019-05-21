.class final Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage$1;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;->create(Lcom/google/android/libraries/smartburst/concurrency/Result;JLjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;",
        "Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$timestampNs:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage$1;->val$timestampNs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    .line 1088
    new-instance v0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;

    iget-wide v2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage$1;->val$timestampNs:J

    invoke-direct {v0, p1, v2, v3}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;J)V

    .line 85
    return-object v0
.end method
