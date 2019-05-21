.class final Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;
.super Ljava/util/TimerTask;
.source "PeriodicStorageSpaceChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/PeriodicStorageSpaceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/PeriodicStorageSpaceChecker;

.field final synthetic val$listener:Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/PeriodicStorageSpaceChecker;Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;->this$0:Lcom/android/camera/storage/PeriodicStorageSpaceChecker;

    iput-object p2, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;->val$listener:Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;->this$0:Lcom/android/camera/storage/PeriodicStorageSpaceChecker;

    invoke-static {v0}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker;->access$000(Lcom/android/camera/storage/PeriodicStorageSpaceChecker;)Lcom/android/camera/storage/StorageSpaceChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/StorageSpaceChecker;->checkSpace(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2$1;-><init>(Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 110
    return-void
.end method
