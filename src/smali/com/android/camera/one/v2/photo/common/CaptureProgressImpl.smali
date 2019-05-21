.class public final Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;
.super Ljava/lang/Object;
.source "CaptureProgressImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;
    }
.end annotation


# instance fields
.field private final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private final exposureIndicatorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

.field private final updateProgress:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/session/StackableSession;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    .line 59
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 60
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->exposureIndicatorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->updateProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->updateProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T1M2S3KELP6AK3IDTJN4PBJED4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Lcom/android/camera/session/StackableSession;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method static synthetic access$500$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T1M2S3KELP6AK3IDTJN4PBJED4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Lcom/google/android/gms/googlehelp/internal/common/zzd;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method


# virtual methods
.method public final cancelProgress()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$3;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$3;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public final createExposureIndicator()Lcom/google/android/apps/camera/async/Updatable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 67
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->exposureIndicatorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 68
    new-instance v0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$1;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)V

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createExposureIndicator(I)Lcom/google/android/apps/camera/async/Updatable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->exposureIndicatorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$2;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 96
    new-instance v0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    iget-object v2, v1, Lcom/google/android/gms/googlehelp/internal/common/zzd;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/google/android/apps/camera/async/MainThread;IB)V

    return-object v0

    :cond_0
    move v0, v5

    .line 84
    goto :goto_0
.end method
