.class final Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;
.super Ljava/lang/Object;
.source "NexusTuningImageSaver.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionDoneTracker"
.end annotation


# instance fields
.field private final done:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDoneFuture()Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final onCaptureCanceled(II)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public final onCaptureDeleted()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public final onCaptureFailed(II)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public final onCaptureFinalized()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public final onCapturePersisted(II)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionDoneTracker;->done:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public final onCaptureStartCommitted(II)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final onCaptureStarted(Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final onMediumThumb()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final onTinyThumb()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
