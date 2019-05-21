.class public final Lcom/android/camera/hdrplus/HdrPlusShot;
.super Ljava/lang/Object;
.source "HdrPlusShot.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final burstId:I

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private gcamIShot:Lcom/google/googlex/gcam/IShot;

.field private final hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

.field private final inFlightSessionAbort:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private isValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "HdrPlusShot"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusShot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/camera/hdrplus/HdrPlusSessionImpl;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/googlex/gcam/IShot;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->isValid:Z

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    iput p1, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    .line 25
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    .line 26
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->inFlightSessionAbort:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 27
    iput-object p4, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->gcamIShot:Lcom/google/googlex/gcam/IShot;

    .line 28
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusShot;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HdrPlus shot aborted! BurstId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->isValid:Z

    .line 62
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->abortShotCapture(Lcom/android/camera/hdrplus/HdrPlusShot;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->inFlightSessionAbort:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public final abortProcessing()V
    .locals 4

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusShot;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HdrPlus shot processing aborted! BurstId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->abortShotProcessing(I)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->inFlightSessionAbort:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 74
    return-void
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusShot;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    .line 49
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x66

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "WARNING: abort() or complete() was never called on burst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "! Invoking abort(). Stack trace: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V

    .line 52
    :cond_0
    return-void
.end method

.method public final complete()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusShot;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HdrPlus shot completed for burstId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->endShotCapture(Lcom/android/camera/hdrplus/HdrPlusShot;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final getBurstId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->burstId:I

    return v0
.end method

.method public final getGcamShot()Lcom/google/googlex/gcam/IShot;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->gcamIShot:Lcom/google/googlex/gcam/IShot;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/hdrplus/HdrPlusShot;->isValid:Z

    return v0
.end method
