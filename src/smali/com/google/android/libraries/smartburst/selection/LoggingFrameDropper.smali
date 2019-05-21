.class public final Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;
.super Ljava/lang/Object;
.source "LoggingFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# instance fields
.field private final mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 34
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mWriter:Ljava/io/Writer;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mWriter:Ljava/io/Writer;

    return-object v0
.end method

.method private final logEvent(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper$1;-><init>(Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final getAcceptedFrames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onFrameDropped(J)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    .line 85
    const-string v0, "ON_DROPPED"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->logEvent(Ljava/lang/String;J)V

    .line 86
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "ON_INSERTED"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->logEvent(Ljava/lang/String;J)V

    .line 79
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V

    .line 80
    return-void
.end method

.method public final reserveBestFrameForProcessing()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reserveBestFrameForProcessing()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final reset()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "RESET"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->logEvent(Ljava/lang/String;J)V

    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reset()V

    .line 64
    return-void
.end method

.method public final selectFrameToDrop()J
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->mBaseFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v0

    .line 56
    const-string v2, "SELECT"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/libraries/smartburst/selection/LoggingFrameDropper;->logEvent(Ljava/lang/String;J)V

    .line 57
    return-wide v0
.end method
