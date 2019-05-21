.class Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;
.super Ljava/lang/Object;
.source "CameraStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExternalCameraLock"
.end annotation


# static fields
.field public static final IDLE:I = 0x0

.field public static final IN_USE:I = 0x1


# instance fields
.field private final mInUseLockCondition:Ljava/util/concurrent/locks/Condition;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockContext:Ljava/lang/Object;

.field private mLockState:I


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)V
    .locals 2

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockState:I

    .line 866
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 867
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mInUseLockCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)V

    return-void
.end method


# virtual methods
.method public lock(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 870
    if-nez p1, :cond_0

    .line 871
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null context when locking"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 874
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockState:I

    if-ne v1, v0, :cond_1

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mInUseLockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_1
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockState:I

    .line 882
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockContext:Ljava/lang/Object;

    .line 883
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 884
    :goto_0
    return v0

    .line 878
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 889
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 890
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not in IN_USE state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockContext:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 893
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lock is not owned by this context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockState:I

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLockContext:Ljava/lang/Object;

    .line 897
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mInUseLockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 898
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 899
    return-void
.end method
