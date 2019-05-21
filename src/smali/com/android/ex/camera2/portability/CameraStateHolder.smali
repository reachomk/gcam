.class public Lcom/android/ex/camera2/portability/CameraStateHolder;
.super Ljava/lang/Object;
.source "CameraStateHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mInvalid:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamStateHolder"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2281
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(IB)V

    .line 2282
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .prologue
    .line 3078
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(IC)V

    .line 3079
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z

    .line 37
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1

    .prologue
    .line 2285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(I)V

    .line 2286
    return-void
.end method

.method public constructor <init>(IC)V
    .locals 1

    .prologue
    .line 3082
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(I)V

    .line 3083
    return-void
.end method

.method private final waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0xdac

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 97
    monitor-enter p0

    .line 98
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;->success()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const-wide/16 v2, 0xdac

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Timeout waiting."

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 110
    :goto_1
    return v0

    .line 109
    :cond_1
    monitor-exit p0

    .line 110
    const/4 v0, 0x1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized getState()I
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized invalidate()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isInvalid()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setState(I)V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I

    if-eq v0, p1, :cond_0

    .line 46
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState - state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    :cond_0
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final waitForStates(I)Z
    .locals 4

    .prologue
    .line 122
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waitForStates - states = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;-><init>(Lcom/android/ex/camera2/portability/CameraStateHolder;I)V

    const-wide/16 v2, 0xdac

    invoke-direct {p0, v0, v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z

    move-result v0

    return v0
.end method
