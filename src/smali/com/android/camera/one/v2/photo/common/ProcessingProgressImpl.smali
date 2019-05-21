.class public final Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;
.super Ljava/lang/Object;
.source "ProcessingProgressImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;


# instance fields
.field private captureIndicatorThumbnailSet:Z

.field private final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private closed:Z

.field private finalResultSet:Z

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final oneCameraParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

.field private remoteThumbnailSet:Z

.field private final shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

.field private thumbnailSet:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/ShotFailureHandler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->oneCameraParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    .line 39
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 40
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 41
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    .line 44
    iput-boolean v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->closed:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->thumbnailSet:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->captureIndicatorThumbnailSet:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->remoteThumbnailSet:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->finalResultSet:Z

    .line 49
    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T874RR3CLPN6QBECT874RR7E9IN6SQ9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)Lcom/android/camera/session/StackableSession;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T874RR3CLPN6QBECT874RR7E9IN6SQ9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)Lcom/google/android/gms/googlehelp/internal/common/zzd;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->oneCameraParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 156
    monitor-exit v1

    .line 177
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->closed:Z

    .line 162
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->finalResultSet:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->thumbnailSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->captureIndicatorThumbnailSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->remoteThumbnailSet:Z

    if-eqz v0, :cond_2

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    invoke-interface {v0}, Lcom/android/camera/error/ShotFailureHandler;->onShotCanceled()V

    .line 168
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->finalResultSet:Z

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$7;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$7;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 177
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->captureIndicatorThumbnailSet:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->captureIndicatorThumbnailSet:Z

    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$2;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 78
    monitor-exit v1

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setFinalResult$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I54PBJELM78EP9AO______(Lcom/google/common/collect/Multimaps;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->closed:Z

    if-eqz v2, :cond_0

    .line 132
    monitor-exit v1

    .line 149
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->finalResultSet:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->finalResultSet:Z

    .line 136
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;Lcom/google/common/collect/Multimaps;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 149
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final setRemoteThumbnail([B)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->remoteThumbnailSet:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->remoteThumbnailSet:Z

    .line 86
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;[B)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 93
    monitor-exit v1

    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 53
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->thumbnailSet:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->thumbnailSet:Z

    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$1;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 63
    monitor-exit v1

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateProgress(F)V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 116
    monitor-exit v1

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;F)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 125
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateProgressMessage(Lcom/android/camera/ui/UiString;)V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 100
    monitor-exit v1

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;-><init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;Lcom/android/camera/ui/UiString;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 109
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
