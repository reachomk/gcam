.class public final Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;
.super Ljava/lang/Object;
.source "DcimFolderStartTask.java"

# interfaces
.implements Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;
.implements Lcom/google/android/apps/camera/async/Initializer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

.field private final dcimFolderCheckResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final detachableDcimFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "DcimFolderStartTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/camera/util/activity/ActivityFinishWithReason;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->activity:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p2, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    .line 37
    invoke-static {}, Lcom/android/camera/storage/StorageModule;->provideDcimCameraFolder()Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->detachableDcimFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 38
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->dcimFolderCheckResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 39
    return-void
.end method


# virtual methods
.method public final onDialogDismissed()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->detachableDcimFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->tryEnsureExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->dcimFolderCheckResult:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    const-string v2, "Abort startup because camera folder doesn\'t exist and cannot be created: "

    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->detachableDcimFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 78
    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/util/activity/ActivityFinishWithReason;->finish(Ljava/lang/String;)V

    .line 83
    :goto_1
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->dcimFolderCheckResult:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->detachableDcimFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->tryEnsureExists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    sget-object v1, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->TAG:Ljava/lang/String;

    const-string v2, "Informing user camera folder doesn\'t exist and cannot be created: "

    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->detachableDcimFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 61
    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1046
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    new-instance v1, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;

    invoke-direct {v1}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;-><init>()V

    .line 1048
    invoke-virtual {v1, p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->setListener(Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;)V

    .line 1049
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "CameraStorageAccessFailureDialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->dcimFolderCheckResult:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_1
    sget-object v0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->TAG:Ljava/lang/String;

    const-string v1, "Could not display error dialog for Camera Storage Access Failure."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;->dcimFolderCheckResult:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1
.end method
