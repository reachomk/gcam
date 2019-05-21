.class public final Lcom/android/camera/storage/StorageSpaceChecker;
.super Ljava/lang/Object;
.source "StorageSpaceChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final lowStorageThresholdBytesPhoto:J

.field private final lowStorageThresholdBytesVideo:J

.field private final mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "StorageSpaceCheck"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/StorageSpaceChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/android/camera/storage/StorageSpaceChecker;->lowStorageThresholdBytesPhoto:J

    .line 29
    iput-wide p3, p0, Lcom/android/camera/storage/StorageSpaceChecker;->lowStorageThresholdBytesVideo:J

    .line 30
    iput-object p5, p0, Lcom/android/camera/storage/StorageSpaceChecker;->mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 31
    iput-object p6, p0, Lcom/android/camera/storage/StorageSpaceChecker;->executor:Ljava/util/concurrent/Executor;

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/storage/StorageSpaceChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker;->mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/storage/StorageSpaceChecker;)J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/android/camera/storage/StorageSpaceChecker;->lowStorageThresholdBytesVideo:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/storage/StorageSpaceChecker;)J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/android/camera/storage/StorageSpaceChecker;->lowStorageThresholdBytesPhoto:J

    return-wide v0
.end method


# virtual methods
.method public final checkSpace(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/camera/storage/StorageSpaceChecker;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/storage/StorageSpaceChecker$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/storage/StorageSpaceChecker$1;-><init>(Lcom/android/camera/storage/StorageSpaceChecker;Lcom/google/common/util/concurrent/SettableFuture;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-object v0
.end method
