.class public final Lcom/android/camera/processing/imagebackend/NullSessionBase;
.super Ljava/lang/Object;
.source "NullSessionBase.java"

# interfaces
.implements Lcom/android/camera/session/SessionBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public final saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/camera/session/MediaInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
