.class final Lcom/android/camera/storage/StorageSpaceChecker$1;
.super Ljava/lang/Object;
.source "StorageSpaceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/StorageSpaceChecker;->checkSpace(Z)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/StorageSpaceChecker;

.field private synthetic val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$isVideoMode:Z


# direct methods
.method constructor <init>(Lcom/android/camera/storage/StorageSpaceChecker;Lcom/google/common/util/concurrent/SettableFuture;Z)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    iput-object p2, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    iput-boolean p3, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$isVideoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 47
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start calculating the available storage space"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "the current state of the primary shared/external storage media: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_1
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v0}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v1}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "create the media folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v0}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v1}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "failed to create the media folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v0}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v1}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "the media folder is not a folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v0}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v1}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "the media folder is not writable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 89
    :cond_4
    const-wide/16 v0, 0x0

    .line 91
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v5}, Lcom/android/camera/storage/StorageSpaceChecker;->access$100(Lcom/android/camera/storage/StorageSpaceChecker;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v0, v6

    .line 93
    invoke-static {}, Lcom/android/camera/storage/StorageSpaceChecker;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "available space size (byte): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_2
    iget-boolean v4, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$isVideoMode:Z

    if-eqz v4, :cond_5

    .line 100
    iget-object v4, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v4}, Lcom/android/camera/storage/StorageSpaceChecker;->access$200(Lcom/android/camera/storage/StorageSpaceChecker;)J

    move-result-wide v4

    .line 102
    :goto_3
    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    .line 104
    sub-long/2addr v0, v4

    .line 106
    :goto_4
    iget-object v2, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 96
    :catch_0
    move-exception v4

    iget-object v4, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->val$checkResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_5
    iget-object v4, p0, Lcom/android/camera/storage/StorageSpaceChecker$1;->this$0:Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-static {v4}, Lcom/android/camera/storage/StorageSpaceChecker;->access$300(Lcom/android/camera/storage/StorageSpaceChecker;)J

    move-result-wide v4

    goto :goto_3

    :cond_6
    move-wide v0, v2

    .line 105
    goto :goto_4
.end method
